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
                        Text("Device ID: \(device_id)").font(.title).bold()
                        Text("Latitude: \(viewModel.getDeviceLatitude(device: device_id))").font(.headline).padding(.top)
                        Text("Longitude: \(viewModel.getDeviceLongitude(device: device_id))").font(.headline).padding(.bottom)
                        Text("Type: \(viewModel.getDeviceType(device: device_id))").font(.body)
                        Spacer()
                    }.padding().offset(x: 0, y: 50)
                    Spacer()
                    VStack{
                        Image("ForestFlockWeatherNodeRender_WOShelf").resizable().frame(width:450, height: 550, alignment: .center)
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
                        }
                    }
                }.padding().offset(x: 0, y: -100)
            }.padding(50)
        
    }
}

struct Devicesheet_Previews: PreviewProvider {
    static var previews: some View {
        Devicesheet(device_id: 125).environmentObject(ViewModel())
    }
}
