use chrono::Utc;
use futures_channel::mpsc::UnboundedSender;
use tokio::{
    io::AsyncReadExt,
    net::{TcpListener, TcpStream},
};

use network_types::{MeshUpdate, ServerUpdate};

pub async fn mesh_listener(event_stream: UnboundedSender<ServerUpdate>) {
    let listener = TcpListener::bind("0.0.0.0:9090").await.unwrap();

    while let Ok((socket, _)) = listener.accept().await {
        let stream = event_stream.clone();
        tokio::spawn(async move {
            decode_event(socket, stream).await;
        });
    }
}

async fn decode_event(mut socket: TcpStream, mut event_stream: UnboundedSender<ServerUpdate>) {
    let buffer_size: usize = socket.read_u32().await.unwrap() as usize;
    let mut buffer = vec![0u8; buffer_size];
    socket.read_exact(&mut buffer).await.unwrap();
    if let Ok(update) = serde_json::from_slice(&buffer) {
        let server_update = match update {
            MeshUpdate::GPS {
                device_id: _,
                latitude: _,
                longitude: _,
            } => None,
            MeshUpdate::Weather {
                device_id,
                temperature,
                humidity,
                pressure,
            } => Some(ServerUpdate::Weather {
                device_id,
                timestamp: Utc::now(),
                temperature,
                humidity,
                pressure,
            }),
            MeshUpdate::Microphone { device_id, class } => Some(ServerUpdate::Microphone {
                device_id,
                timestamp: Utc::now(),
                sound_class: match class {
                    0 => "Fire",
                    1 => "Gunshot",
                    2 => "Chainsaw",
                    3 => "Human",
                    _ => "Unknown",
                }
                .to_string(),
            }),
        };
        println!("converted: {:?}", server_update);
        if let Some(server_update) = server_update {
            event_stream.unbounded_send(server_update).unwrap();
        }
    }
}
