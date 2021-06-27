//
//  Infomodel.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import SwiftUI
import MapKit

struct InfoModel {
    
    
    
}

enum domicile: String, CaseIterable, Identifiable{
    case house = "house"
    case apartment = "apartment"
    case commercial = "commercial"
    
    var id: String{self.rawValue}
}

struct Update : Codable {
    var device_id: UInt32
    var timestamp: String
    var sound_class: String?
    var temperature: Float?
    var humidity: Float?
    var pressure: Float?
    var id = UUID()
}

struct Device:Identifiable {
    var device_id: UInt32
    var type: String
    var latitude: Double
    var longitude: Double
    let color: Color
    var show = false
    var id = UUID()

    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}


