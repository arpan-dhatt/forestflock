//
//  RainWidget.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import SwiftUI

struct RainWidget: View {
        @State var level: String = "High"
        var desc: String = "Rain Threat"
        
        var body: some View {
            VStack {
                Text("\(level)").font(.system(size: 40)).foregroundColor(.white)
                Text(desc).foregroundColor(.white).font(.headline)
            }.padding(30).frame(width: 250, height: 200).background(LinearGradient(gradient: Gradient(colors: [Color(red: 10/255, green: 19/255, blue: 170/255), Color.blue]), startPoint: .top, endPoint: .bottom)).cornerRadius(15.0)
        }
}

struct RainWidget_Previews: PreviewProvider {
    static var previews: some View {
        RainWidget()
    }
}
