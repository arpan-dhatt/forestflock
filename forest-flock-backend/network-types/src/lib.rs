use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize, Debug)]
#[serde(untagged)]
pub enum MeshUpdate {
    GPS {
        device_id: u32,
        latitude: f32,
        longitude: f32,
    },
    Microphone {
        device_id: u32,
        class: u8,
    },
    Weather {
        device_id: u32,
        temperature: f32,
        humidity: f32,
        pressure: f32,
    }
}

#[derive(Serialize, Deserialize, Debug, Clone)]
#[serde(untagged)]
pub enum ServerUpdate {
    Microphone {
        device_id: u32,
        timestamp: chrono::DateTime<chrono::Utc>,
        sound_class: String
    },
    Weather {
        device_id: u32,
        timestamp: chrono::DateTime<chrono::Utc>,
        temperature: f32,
        humidity: f32,
        pressure: f32
    }
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct WebsocketResponse {
    pub data: Vec<ServerUpdate>
}
