//
//  CoverageWidget.swift
//  ForestFlock
//
//  Created by Arpan Dhatt on 6/26/21.
//

import SwiftUI

struct CoverageWidget: View {
    @State var miles: Int = 8;
    @State var nodes: Int = 3;
    
    var body: some View {
        HStack {
            VStack {
                Text("\(nodes)").font(.system(size: 90)).foregroundColor(.white)
                Text("Active Nodes").foregroundColor(.white).font(.headline)
            }
            Spacer()
            VStack {
                Text("0.\(miles)").font(.system(size: 90)).foregroundColor(.white)
                Text("Sq. Mi.").foregroundColor(.white).font(.headline)
            }
        }.padding(30).frame(width: 325, height: 200).background(LinearGradient(gradient: Gradient(colors: [Color(red: 202/255, green: 114/255, blue: 214/255), Color(red: 145/255, green: 52/255, blue: 127/255)]), startPoint: .top, endPoint: .bottom)).cornerRadius(30.0)
    }
}

struct CoverageWidget_Previews: PreviewProvider {
    static var previews: some View {
        CoverageWidget()
    }
}
