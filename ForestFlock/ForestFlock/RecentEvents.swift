//
//  RecentEvents.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import SwiftUI

struct RecentEvents: View {
    @State var collapsed = true
    @State var showingSheet = false
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        ZStack{
            HStack{
                HStack{
                VStack{
                    Text("Recent Events").font(.title)
                    ScrollView{
                        ForEach(viewModel.updates.reversed(), id: \.id){update in
                            if update.sound_class != nil {
                                RecentEventCard(messege: "An Wild \(update.sound_class ?? "Error") Detected", type: "Sound", latitude: viewModel.getDeviceLatitude(device: update.device_id), longitude: viewModel.getDeviceLongitude(device: update.device_id), picture: viewModel.eventCardImage(name: update.sound_class!), timestamp: update.timestamp, collapsed: $collapsed).padding(.vertical).onTapGesture {
                                    viewModel.selectedDeviceID = update.device_id
                                    showingSheet.toggle()
                                }
                            }
                            else {
                                RecentWeatherEventCard(type: "Weather", latitude: viewModel.getDeviceLatitude(device: update.device_id), longitude: viewModel.getDeviceLongitude(device: update.device_id), picture: "sun.max", temperature: update.temperature!, humidity: update.humidity!, pressure: update.pressure!, timestamp: "Hello", collapsed: $collapsed)
                            }
                        }
                        
                    }
                    Spacer()
                }.frame(minWidth: 0, maxWidth: collapsed ? 0 : 400, minHeight: 100).animation(.easeIn).transition(.slide).padding().background(Color.white).shadow(radius: 10.0)
                VStack{
                    Button(action: {collapsed.toggle()}){
                        Image(systemName: self.collapsed ? "chevron.right" : "chevron.left").font(.system(size: 50))
                    }.padding().overlay(RoundedRectangle(cornerRadius: 10.0).stroke(Color.gray, lineWidth: 1))
                    Spacer()
                }.padding()
                }
                Spacer()
            }
        }.sheet(isPresented: $showingSheet){
            Devicesheet(device_id: viewModel.selectedDeviceID)
        }
    }
}

struct RecentEvents_Previews: PreviewProvider {
    static var previews: some View {
        RecentEvents().environmentObject(ViewModel())
    }
}
