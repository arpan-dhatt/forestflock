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

#[derive(Serialize, Deserialize, Debug)]
#[serde(untagged)]
pub enum ServerUpdate {
    Microphone {
        device_id: u32,
        timestamp: chrono::DateTime<chrono::Utc>,
        class: u8
    },
    Weather {
        device_id: u32,
        timestamp: chrono::DateTime<chrono::Utc>,
        temperature: f32,
        humidity: f32,
        pressure: f32
    }
}

impl From<MeshUpdate> for ServerUpdate {
    fn from(_: MeshUpdate) -> Self {
        
    }
}
