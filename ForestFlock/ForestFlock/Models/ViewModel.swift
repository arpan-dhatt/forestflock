//
//  ViewModel.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var model = InfoModel();
    
    //Transition Variables
    @Published var page = "home"
    //@Published var markers = [marker(named: "1", latitude: 32.96773, longitude: -97.13125, color: .gray), marker(named: "2", latitude: 32.98047, longitude: -97.00058, color: .green), marker(named: "3", latitude: 32.85617, longitude: -97.16375, color: .gray), marker(named: "4", latitude: 32.72081, longitude: -97.10330, color: .gray), marker(named: "5", latitude: 32.75777, longitude: -96.86366, color: .gray)]
    @Published var selectedDeviceID: UInt32 = 1
    @Published var updates: [Update] = [Update.init(device_id: 125, timestamp: "sdfaafdas", sound_class: "gunshot", temperature: nil, humidity: nil, pressure: nil), Update.init(device_id: 125, timestamp: "sdfaafdas", sound_class: "fire", temperature: nil, humidity: nil, pressure: nil), Update.init(device_id: 126, timestamp: "afasfasdfasdfsa", sound_class: nil, temperature: 10.0, humidity: 10.0, pressure: 10.0), Update.init(device_id: 124, timestamp: "afafasdfsa", sound_class: nil, temperature: 10.0, humidity: 10.0, pressure: 10.0)]
    @Published var devices: [Device] = [Device.init(device_id: 124, type: "Sound", latitude: 32.96773, longitude: -97.13125, color: .gray), Device.init(device_id: 125, type: "Sound", latitude: 32.98047, longitude: -97.00058, color: .green), Device.init(device_id: 12, type: "Weather", latitude: 32.85617, longitude: -97.16375, color: .gray), Device.init(device_id: 127, type: "Weather", latitude: 32.72081, longitude: -97.10330, color: .gray)]
    
    //Functions
    func eventCardImage(name: String) -> String{
        if name == "gunshot"{
            return "scissors"
        }
        else if name == "chainsaw" {
            return "airpodspro"
        }
        else if name == "fire"{
            return "flame"
        }
        else {
            return "ladybug"
        }
    }
    
    func getDeviceLatitude(device: UInt32) -> Double {
        for number in devices {
            if number.device_id == device {
                return number.latitude
            }
        }
        return 0.0
    }
    
    func getDeviceLongitude(device: UInt32) -> Double {
        for number in devices {
            if number.device_id == device {
                return number.longitude
            }
        }
        return 0.0
    }
    
    func getDeviceType(device: UInt32) -> String {
        for number in devices {
            if number.device_id == device {
                return number.type
            }
        }
        return "Error"
    }
    
     
}
