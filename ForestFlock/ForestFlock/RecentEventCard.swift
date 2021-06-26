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
    @State var internalCollapsed: Bool = true
    
    var body: some View {
        if !collapsed{
        ZStack{
            VStack{
                HStack(alignment: .top){
                    Text(messege).font(.title).bold()
                    Image(systemName: picture).font(.system(size:50))
                }.padding()
                Button(action: {internalCollapsed.toggle()}){
                    Image(systemName: self.internalCollapsed ? "chevron.down" : "chevron.up").font(.system(size: 25))
                }
                if !internalCollapsed{
                VStack{
                    Text(type).padding(.top)
                    Text("At \(timestamp)")
                    Text("Latitude: \(latitude)").padding(.vertical)
                    Text("Longitude: \(longitude)")
                }.padding().animation(.easeIn)
                }
            }.padding()
        }.background(Color.white).cornerRadius(10.0).shadow(radius: 10.0).animation(.easeOut).transition(.slide).padding(.vertical)
        }
    }
}

//struct RecentEventCard_Previews: PreviewProvider {
    //static var previews: some View {
        //RecentEventCard(messege: "An Wild Vivek Detected", type: "Animals", latitude: 100.0, longitude: 100.0, picture: "ladybug", collapsed: true )
    //}
//}
