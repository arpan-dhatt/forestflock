use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
#[serde(untagged)]
pub enum MeshUpdate {
    GPS {
        device_id: u32,
        latitude: f32,
        longitude: f32,
    },
    Microphone {
        device_id: u32,
        class: String,
    },
    Weather {
        device_id: u32,
        temperature: f32,
        humidity: f32,
        pressure: f32,
    }
}
