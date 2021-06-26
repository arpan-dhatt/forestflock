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
    var temperature: Double
    var humidity: Double
    var pressure: Double
    var timestamp: String

    @Binding var collapsed: Bool
    
    var body: some View {
        if !collapsed{
        ZStack{
            HStack{
                VStack(alignment: .leading){
                    Text("Weather Update").font(.title).bold()
                    Text("At \(timestamp)")
                    Text("Latitude: \(latitude)").padding(.vertical)
                    Text("Longitude: \(longitude)")
                    Text("Temperature: \(temperature)")
                    Text("Humidity: \(humidity)")
                    Text("Pressure: \(pressure)")
                }.padding()
                VStack{
                    Image(systemName: picture).font(.system(size:70))
                    Text(type).padding(.top)
                    
                }.padding()
            }.padding()
        }.background(Color.white).cornerRadius(10.0).shadow(radius: 10.0).animation(.easeOut).transition(.slide).padding(.vertical)
        }
    }
}

//struct RecentWeatherEventCard_Previews: PreviewProvider {
//    static var previews: some View {
//        RecentWeatherEventCard(type: "Weather`", latitude: 10.0, longitude: 10.0, picture: "ladybug", temperature: 100.0, humidity: 10.01, pressure: 10.0, timestamp: "Yolo", collapsed: <#Binding<Bool>#>)
//    }
//}
