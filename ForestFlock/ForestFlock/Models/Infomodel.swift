//
//  Infomodel.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import Foundation
import SwiftUI


struct InfoModel {
    
    
    
}

enum domicile: String, CaseIterable, Identifiable{
    case house = "house"
    case apartment = "apartment"
    case commercial = "commercial"
    
    var id: String{self.rawValue}
}

struct MicrophoneUpdate {
    var device_id: UInt32
    var timestamp: String
    var sound_class: String
}

struct WeatherUpdate {
    var device_id: UInt32
    var timestamp: String
    var temperature: Float
    var humidity: Float
    var pressure: Float
}
