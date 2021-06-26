//
//  SpeciesWidget.swift
//  ForestFlock
//
//  Created by Arpan Dhatt on 6/26/21.
//

import SwiftUI

struct SpeciesWidget: View {
    @State var count: Int = 32;
    var desc: String = "Species"
    
    var body: some View {
        VStack {
            Text("\(count)").font(.system(size: 40)).foregroundColor(.white)
            Text(desc).foregroundColor(.white).font(.headline)
        }.padding(30).frame(width: 150, height: 100).background(LinearGradient(gradient: Gradient(colors: [Color(red: 7/255, green: 217/255, blue: 139/255), Color("dharc-green")]), startPoint: .top, endPoint: .bottom)).cornerRadius(15.0)
    }
}

struct SpeciesWidget_Previews: PreviewProvider {
    static var previews: some View {
        SpeciesWidget()
    }
}
