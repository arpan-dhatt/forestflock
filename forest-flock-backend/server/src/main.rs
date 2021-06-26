mod mesh_egress;
mod db_driver;

use std::{
    collections::HashMap,
    env,
    io::Error as IoError,
    net::SocketAddr,
    sync::{Arc, Mutex},
};

use db_driver::store_update;
use futures_channel::mpsc::{unbounded, UnboundedSender, UnboundedReceiver};
use futures_util::{future, pin_mut, stream::TryStreamExt, StreamExt};

use network_types::ServerUpdate;
use tokio::net::{TcpListener, TcpStream};
use tokio_tungstenite::tungstenite::protocol::Message;

use crate::{db_driver::initialize_db, mesh_egress::mesh_listener};

type Tx = UnboundedSender<Message>;
type Database = Arc<sled::Db>;
type PeerMap = Arc<Mutex<HashMap<SocketAddr, Tx>>>;

async fn handle_connection(peer_map: PeerMap, raw_stream: TcpStream, addr: SocketAddr) {
    println!("Incoming TCP connection from: {}", addr);

    let ws_stream = tokio_tungstenite::accept_async(raw_stream)
        .await
        .expect("Error during the websocket handshake occurred");
    println!("WebSocket connection established: {}", addr);

    // Insert the write part of this peer to the peer map.
    let (tx, rx) = unbounded();
    {
        peer_map.lock().unwrap().insert(addr, tx);
    }

    let (outgoing, incoming) = ws_stream.split();

    let broadcast_incoming = incoming.try_for_each(|msg| {
        println!(
            "Received a message from {}: {}",
            addr,
            msg.to_text().unwrap()
        );

        future::ok(())
    });

    let sender = rx.map(Ok).forward(outgoing);

    pin_mut!(broadcast_incoming, sender);
    future::select(broadcast_incoming, sender).await;

    println!("{} disconnected", &addr);
    peer_map.lock().unwrap().remove(&addr);
}

#[tokio::main]
async fn main() -> Result<(), IoError> {
    let addr = env::args()
        .nth(1)
        .unwrap_or_else(|| "127.0.0.1:8080".to_string());

    let db = Arc::new(initialize_db("updates.data"));
    let state = PeerMap::new(Mutex::new(HashMap::new()));

    let (tx, rx) = unbounded();
    tokio::spawn(async move {
        mesh_listener(tx).await;
    });
    let server_update_arc = state.clone();
    tokio::spawn(async move {
        receive_server_updates(db.clone(), server_update_arc.clone(), rx).await;
    });

    // Create the event loop and TCP listener we'll accept connections on.
    let try_socket = TcpListener::bind(&addr).await;
    let listener = try_socket.expect("Failed to bind");
    println!("Listening on: {}", addr);

    // Let's spawn the handling of each connection in a separate task.
    while let Ok((stream, addr)) = listener.accept().await {
        tokio::spawn(handle_connection(state.clone(), stream, addr));
    }

    Ok(())
}

async fn receive_server_updates(db: Database, peer_map: PeerMap, mut event_stream: UnboundedReceiver<ServerUpdate>) {
    while let Some(update) = event_stream.next().await {
        println!("received update, forwarding to ws");
        let peers = peer_map.lock().unwrap();
        println!("sending to {} peers", peers.len());
        let json_bytes = serde_json::to_vec(&update).unwrap();
        println!("converted to json: {}", String::from_utf8_lossy(&json_bytes));
        store_update(&db, update);
        for (addr,recp) in peers.iter() {
            println!("sending to {}", addr);
            recp.unbounded_send(Message::binary(json_bytes.clone())).unwrap();
        }
    }
}
