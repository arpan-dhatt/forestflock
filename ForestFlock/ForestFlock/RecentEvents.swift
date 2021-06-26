//
//  RecentEvents.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import SwiftUI

struct RecentEvents: View {
    @State var collapsed = true
    
    var body: some View {
        ZStack{
            HStack{
                HStack{
                VStack{
                    Text("Recent Events")
                    Spacer()
                }.frame(minWidth: 0, maxWidth: collapsed ? 0 : 250, minHeight: 100).animation(.easeIn).transition(.slide).padding().font(.title).background(Color.white).shadow(radius: 10.0)
                VStack{
                    Button(action: {collapsed.toggle()}){
                        Image(systemName: self.collapsed ? "chevron.right" : "chevron.left").font(.system(size: 50))
                    }.padding().overlay(RoundedRectangle(cornerRadius: 10.0).stroke(Color.gray, lineWidth: 1))
                    Spacer()
                }.padding()
                }
                Spacer()
            }
        }
    }
}

struct RecentEvents_Previews: PreviewProvider {
    static var previews: some View {
        RecentEvents()
    }
}
