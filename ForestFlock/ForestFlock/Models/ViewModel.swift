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
    @Published var updates: [Update] = [Update.init(device_id: 125, timestamp: "sdfaafdas", sound_class: "gunshot", temperature: nil, humidity: nil, pressure: nil), Update.init(device_id: 125, timestamp: "sdfaafdas", sound_class: "fire", temperature: nil, humidity: nil, pressure: nil), Update.init(device_id: 126, timestamp: "afasfasdfasdfsa", sound_class: nil, temperature: 10.0, humidity: 10.0, pressure: 10.0), Update.init(device_id: 126, timestamp: "afafasdfsa", sound_class: nil, temperature: 10.0, humidity: 10.0, pressure: 10.0)]
    @Published var devices: [Device] = [Device.init(device_id: 124, type: "Sound", latitude: 32.96773, longitude: -97.13125, color: .gray), Device.init(device_id: 125, type: "Sound", latitude: 32.98047, longitude: -97.00058, color: .green), Device.init(device_id: 12, type: "Weather", latitude: 32.85617, longitude: -97.16375, color: .gray), Device.init(device_id: 126, type: "Weather", latitude: 32.72081, longitude: -97.10330, color: .gray)]
    
    init() {
        initializeConnection()
    }
    
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
    
    func weatherCardImage(temperature: Float) -> String{
        if temperature > 100 {
            return "sun.max"
        }
        else if temperature > 70 {
            return "sun.min"
        }
        else if temperature > 50 {
            return "cloud.drizzle"
        }
        else {
            return "cloud.heavyrain"
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
    
    func getMostRecentTimestamp(device: UInt32) -> String {
        for number in updates.reversed() {
            if number.device_id == device {
                return number.timestamp
            }
        }
        return "No Recent Events"
    }
    
    var socketTask: URLSessionWebSocketTask?
    
    func initializeConnection() {
        let url = "ws://192.168.86.56:8080"
        print(url)
        socketTask = URLSession.shared.webSocketTask(with: URL(string: url)!)
        
        socketTask?.resume()
        
        receive()
        print("begun")
    }
    
    func receive() {
        self.socketTask?.receive { [weak self] result in
            print(result)
            switch result {
            case .failure(let error):
                print(error)
            case .success(let message):
                switch message {
                case .string(let text):
                    print(text)
                case .data(let data):
                    self?.handleReception(data)
                }
                self?.receive()
            }
        }
    }
    
    func handleReception(_ data: Data) {
        let decoded = try! JSONDecoder().decode(WebsocketMessage.self, from: data)
        print(decoded)
        DispatchQueue.main.async {
            self.updates.append(contentsOf: decoded.data.map({e in
                return Update(device_id: e.device_id, timestamp: e.timestamp, sound_class: e.sound_class, temperature: e.temperature, humidity: e.humidity, pressure: e.pressure)
            }))
        }
    }
}

struct WebsocketMessage : Codable {
    var data: [WebsocketUpdate]
}

struct WebsocketUpdate : Codable {
    var device_id: UInt32
    var timestamp: String
    var sound_class: String?
    var temperature: Float?
    var humidity: Float?
    var pressure: Float?
}
