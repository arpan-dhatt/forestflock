use std::time::SystemTime;

use chrono::prelude::*;
use network_types::ServerUpdate;

pub fn initialize_db(path: &str) -> sled::Db {
    let db = sled::open(path).unwrap();
    db
}

pub fn store_update(db: &mut sled::Db, update: ServerUpdate) {
    let updates = db.open_tree(b"updates").unwrap();
    let timestamp = match &update {
        ServerUpdate::Weather { device_id: _, timestamp, temperature: _, humidity: _, pressure: _ } => timestamp.to_rfc3339(),
        ServerUpdate::Microphone { device_id: _, timestamp, sound_class: _ } => timestamp.to_rfc3339()
    };
    let data = serde_json::to_vec(&update).unwrap();
    updates.insert(timestamp.as_bytes(), data).unwrap();
}

pub fn get_all_updates(db: &sled::Db) -> Vec<ServerUpdate> {
    let updates = db.open_tree(b"updates").unwrap();
    updates.iter().values().filter_map(|e| e.ok()).filter_map(|b| serde_json::from_slice(&b).ok()).collect()
}
