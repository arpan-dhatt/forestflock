//
//  RecentWeatherEventCard.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import SwiftUI

struct RecentWeatherEventCard: View {
    var type: String
    var latitude: Double
    var longitude: Double
    var picture: String
    var temperature: Float
    var humidity: Float
    var pressure: Float
    var timestamp: String

    @Binding var collapsed: Bool
    @State var internalCollapsed: Bool = true
    
    var body: some View {
        if !collapsed{
            ZStack{
                VStack{
                    VStack(alignment: .center){
                        Image(systemName: picture).font(.system(size:50))
                        Text("WEATHER Update").font(.title).bold().multilineTextAlignment(.center)
                    }.padding()
                    Button(action: {internalCollapsed.toggle()}){
                        Image(systemName: self.internalCollapsed ? "chevron.down" : "chevron.up").font(.system(size: 50)).padding().overlay(RoundedRectangle(cornerRadius: 10.0).stroke(Color.blue, lineWidth: 1))
                    }
                    if !internalCollapsed{
                        VStack(alignment: .leading){
                            Divider()
                        Text("At: \(timestamp)")
                        Text("Latitude: \(latitude)")
                        Text("Longitude: \(longitude)")
                            Divider()
                        Text("Temperature: \(temperature)")
                        Text("Humidity: \(humidity)")
                        Text("Pressure: \(pressure)")
                            Text("Sensor: Weather Station").padding(.top)
                    }.padding().animation(.easeIn)
                    }
                }.padding()
            }.frame(maxWidth: .infinity).background(Color.white).cornerRadius(10.0).shadow(radius: 10.0).animation(.easeOut).transition(.slide).padding()
            
//        ZStack{
//            HStack{
//                VStack(alignment: .leading){
//                    Text("Weather Update").font(.title).bold()
//                    Text("At \(timestamp)")
//                    Text("Latitude: \(latitude)").padding(.vertical)
//                    Text("Longitude: \(longitude)")
//                    Text("Temperature: \(temperature)")
//                    Text("Humidity: \(humidity)")
//                    Text("Pressure: \(pressure)")
//                }.padding()
//                VStack{
//                    Image(systemName: picture).font(.system(size:70))
//                    Text(type).padding(.top)
//                    
//                }.padding()
//            }.padding()
//        }.background(Color.white).cornerRadius(10.0).shadow(radius: 10.0).animation(.easeOut).transition(.slide).padding(.vertical)
 }
    }
}

//struct RecentWeatherEventCard_Previews: PreviewProvider {
//    static var previews: some View {
//        RecentWeatherEventCard(type: "Weather`", latitude: 10.0, longitude: 10.0, picture: "ladybug", temperature: 100.0, humidity: 10.01, pressure: 10.0, timestamp: "Yolo", collapsed: <#Binding<Bool>#>)
//    }
//}
