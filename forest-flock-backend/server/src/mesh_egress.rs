use futures_channel::mpsc::UnboundedSender;
use tokio::{io::AsyncReadExt, net::{TcpListener, TcpStream}};

use crate::network_types::MeshUpdate;


pub async fn mesh_listener(event_stream: UnboundedSender<MeshUpdate>) {
    let listener = TcpListener::bind("0.0.0.0:9090").await.unwrap();

    while let Ok((socket, _)) = listener.accept().await {
        let stream = event_stream.clone();
        tokio::spawn(async move {
            decode_event(socket, stream).await;
        });
    }
}

async fn decode_event(mut socket: TcpStream, mut event_stream: UnboundedSender<MeshUpdate>) {
    let buffer_size: usize = socket.read_u32().await.unwrap() as usize;
    let mut buffer = vec![0u8; buffer_size];
    socket.read_exact(&mut buffer).await.unwrap();
    if let Ok(update)  = serde_json::from_slice(&buffer) {
        event_stream.unbounded_send(update).unwrap();
    }
}
