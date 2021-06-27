//
//  FireWidget.swift
//  ForestFlock
//
//  Created by Arpan Dhatt on 6/26/21.
//

import SwiftUI

struct FireWidget: View {
    var level: String = "Low"
    var desc: String = "Fire Threat"
    
    var body: some View {
        VStack {
            Text("\(level)").font(.system(size: 40)).foregroundColor(.white)
            Text(desc).foregroundColor(.white).font(.headline)
        }.padding(10).frame(width: 150, height: 100).background(LinearGradient(gradient: Gradient(colors: [Color(red: 240/255, green: 199/255, blue: 17/255), Color.orange]), startPoint: .top, endPoint: .bottom)).cornerRadius(15.0)
    }
}

struct FireWidget_Previews: PreviewProvider {
    static var previews: some View {
        FireWidget()
    }
}
