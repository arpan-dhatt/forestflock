//
//  RecentEventCard.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import SwiftUI

struct RecentEventCard: View {
    var messege: String
    var type: String
    var latitude: Double
    var longitude: Double
    var picture: String
    var timestamp: String
    @Binding var collapsed: Bool
    @State var internalCollapsed: Bool 
    
    var body: some View {
        if !collapsed{
        ZStack{
            VStack{
                VStack(alignment: .center){
                    Image(systemName: picture).font(.system(size:50))
                    Text(messege).font(.title).bold().multilineTextAlignment(.center)
                }.padding()
                HStack{
                    Button(action: {}){
                        Text("Deploy Resources").font(.system(size:20)).scaledToFill().padding().overlay(RoundedRectangle(cornerRadius: 10.0).stroke(Color("dharc-green"), lineWidth: 1)).foregroundColor(Color("dharc-green"))
                    }
                    Spacer()
                    Button(action: {internalCollapsed.toggle()}){
                        Image(systemName: self.internalCollapsed ? "chevron.down" : "chevron.up").font(.system(size: 30)).foregroundColor(Color("dharc-green"))
                    }

                }.padding(.bottom)
                if !internalCollapsed{
                    VStack(alignment: .leading){
                    Divider()
                    Text("At: \(timestamp)")
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

//struct RecentEventCard_Previews: PreviewProvider {
    //static var previews: some View {
        //RecentEventCard(messege: "An Wild Vivek Detected", type: "Animals", latitude: 100.0, longitude: 100.0, picture: "ladybug", collapsed: true )
    //}
//}
