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
                    ScrollView{
                    Text("Recent Events").font(.largeTitle).bold().padding(.vertical, 50)
                        ForEach(viewModel.updates.reversed(), id: \.id){update in
                            if update.sound_class != nil {
                                RecentEventCard(messege: "\(update.sound_class?.uppercased() ?? "Error") Detected", type: "Sound", latitude: viewModel.getDeviceLatitude(device: update.device_id), longitude: viewModel.getDeviceLongitude(device: update.device_id), picture: viewModel.eventCardImage(name: update.sound_class!), timestamp: update.timestamp, collapsed: $collapsed, internalCollapsed: true).padding(.vertical).onTapGesture {
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
                }.frame(minWidth: 0, maxWidth: collapsed ? 0 : 400, minHeight: 100).animation(.easeInOut).background(Color.white).cornerRadius(10.0).shadow(radius: 10.0)
                    VStack{
                        Spacer()
                    Button(action: {collapsed.toggle()}){
                        Image(systemName: self.collapsed ? "chevron.right" : "chevron.left").font(.system(size: 50)).foregroundColor(.white)
                    }.padding().background(Color("dharc-green")).cornerRadius(10.0)
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
