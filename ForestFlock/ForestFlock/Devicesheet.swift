//
//  Devicesheet.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import SwiftUI

struct Devicesheet: View {
    @EnvironmentObject var viewModel: ViewModel
    @State private var collapsed = false
    var device_id: UInt32
    
    var body: some View {
        
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("Device ID: \(device_id)")
                        Text("Latitude: \(viewModel.getDeviceLatitude(device: device_id))")
                        Text("Longitude: \(viewModel.getDeviceLongitude(device: device_id))")
                        Text("Type: \(viewModel.getDeviceType(device: device_id))")
                    }
                    Spacer()
                    VStack{
                        Image("biden").resizable().frame(width:250, height: 250, alignment: .center)
                    }
                }
                ScrollView(.horizontal){
                    HStack{
                        ForEach(viewModel.updates.reversed(), id: \.id){update in
                        if update.device_id == device_id && update.sound_class != nil{
                            RecentEventCard(messege: "An Wild \(update.sound_class ?? "Error") Detected", type: "Sound", latitude: viewModel.getDeviceLatitude(device: update.device_id), longitude: viewModel.getDeviceLongitude(device: update.device_id), picture: viewModel.eventCardImage(name: update.sound_class!), timestamp: update.timestamp, collapsed: $collapsed, internalCollapsed: false).padding(.vertical)
                        }
                        else if update.device_id == device_id && update.sound_class == nil {
                            RecentWeatherEventCard(type: "Weather", latitude: viewModel.getDeviceLatitude(device: update.device_id), longitude: viewModel.getDeviceLongitude(device: update.device_id), picture: viewModel.weatherCardImage(temperature: update.temperature!), temperature: update.temperature!, humidity: update.humidity!, pressure: update.pressure!, timestamp: update.timestamp, collapsed: $collapsed, internalCollapsed: false)
                        }
                    }.padding()
                    }
                }
            }.padding(50)
        
    }
}

struct Devicesheet_Previews: PreviewProvider {
    static var previews: some View {
        Devicesheet(device_id: 125).environmentObject(ViewModel())
    }
}
