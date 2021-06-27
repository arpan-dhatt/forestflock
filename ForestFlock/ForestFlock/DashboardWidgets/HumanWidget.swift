//
//  HumanWidget.swift
//  ForestFlock
//
//  Created by Arpan Dhatt on 6/26/21.
//

import SwiftUI

struct HumanWidget: View {
    @State var count: Int = 12;
    var desc: String = "Human"
    
    var body: some View {
        VStack {
            Text("\(count)").font(.system(size: 40)).foregroundColor(.white)
            Text(desc).foregroundColor(.white).font(.headline)
        }.padding(30).frame(width: 250, height: 200).background(LinearGradient(gradient: Gradient(colors: [Color(red: 148/255, green: 107/255, blue: 201/255), Color(red: 94/255, green: 27/255, blue: 130/255)]), startPoint: .top, endPoint: .bottom)).cornerRadius(15.0)
    }
}

struct HumanWidget_Previews: PreviewProvider {
    static var previews: some View {
        HumanWidget()
    }
}
