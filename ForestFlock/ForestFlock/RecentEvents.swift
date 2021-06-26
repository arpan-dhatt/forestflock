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
    
    var body: some View {
        ZStack{
            HStack{
                HStack{
                VStack{
                    Text("Recent Events").font(.title)
                    ScrollView{
                        RecentEventCard(messege: "An Wild Vivek Detected", type: "Animals", latitude: 100.0, longitude: 100.0, picture: "ladybug", collapsed: $collapsed).padding(.vertical).onTapGesture {
                            showingSheet.toggle()
                        }
                        RecentEventCard(messege: "An Wild Vivek Detected", type: "Animals", latitude: 100.0, longitude: 100.0, picture: "ladybug", collapsed: $collapsed).padding(.vertical)
                        RecentEventCard(messege: "An Wild Vivek Detected", type: "Animals", latitude: 100.0, longitude: 100.0, picture: "ladybug", collapsed: $collapsed).padding(.vertical)
                        
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
            Text("Hello")
        }
    }
}

struct RecentEvents_Previews: PreviewProvider {
    static var previews: some View {
        RecentEvents()
    }
}
