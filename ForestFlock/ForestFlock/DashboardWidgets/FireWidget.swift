//
//  FireWidget.swift
//  ForestFlock
//
//  Created by Arpan Dhatt on 6/26/21.
//

import SwiftUI

struct FireWidget: View {
    @State var level: String = "Low";
    
    var body: some View {
        VStack {
            Text("\(level)").font(.system(size: 90)).foregroundColor(.white)
            Text("Fire Threat").foregroundColor(.white).font(.largeTitle)
        }.padding(30).background(LinearGradient(gradient: Gradient(colors: [Color(red: 240/255, green: 199/255, blue: 17/255), Color.orange]), startPoint: .top, endPoint: .bottom)).cornerRadius(30.0).frame(maxWidth: .infinity)
    }
}

struct FireWidget_Previews: PreviewProvider {
    static var previews: some View {
        FireWidget()
    }
}
