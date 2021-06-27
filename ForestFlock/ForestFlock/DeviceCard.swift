//
//  DeviceCard.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import SwiftUI

struct DeviceCard: View {
    var type: String
    var latitude: Double
    var longitude: Double
    var device_id: UInt32
    @Binding var collapsed: Bool
    @State var internalCollapsed: Bool
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        if !collapsed{
        ZStack{
            VStack{
                VStack(alignment: .center){
                    if type == "Weather"{
                        Image(systemName: "thermometer.sun.fill").font(.system(size:50))
                    }
                    else {
                        Image(systemName: "mic.fill").font(.system(size:50))
                    }
                    Text("Node \(device_id)").font(.title).bold().multilineTextAlignment(.center).padding(.top)
                }.padding()
                HStack{
                    Button(action: {}){
                        Text("Alert Events").font(.system(size:20)).scaledToFill().padding().overlay(RoundedRectangle(cornerRadius: 10.0).stroke(Color("dharc-green"), lineWidth: 1)).foregroundColor(Color("dharc-green"))
                    }
                    
                    Button(action: {internalCollapsed.toggle()}){
                        Image(systemName: self.internalCollapsed ? "chevron.down" : "chevron.up").font(.system(size: 30)).foregroundColor(Color("dharc-green"))
                    }

                }.padding(.bottom)
                if !internalCollapsed{
                    VStack(alignment: .leading){
                    Divider()
                        Text("Most Recent Event: \(viewModel.getMostRecentTimestamp(device: device_id))")
                    Text("Latitude: \(latitude)")
                    Text("Longitude: \(longitude)")
                    Text("Sensor: \(type)").padding(.top)
                }.padding().animation(.easeIn)
                }
            }.padding()
        }.frame(maxWidth: .infinity).background(Color.white).cornerRadius(10.0).shadow(radius: 10.0).animation(.easeOut).transition(.slide).padding()
        }
    }
}

//struct DeviceCard_Previews: PreviewProvider {
//    static var previews: some View {
//        DeviceCard().environmentObject(ViewModel())
//    }
//}
