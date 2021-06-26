//
//  SpeciesWidget.swift
//  ForestFlock
//
//  Created by Arpan Dhatt on 6/26/21.
//

import SwiftUI

struct SpeciesWidget: View {
    @State var count: Int = 32;
    
    var body: some View {
        VStack {
            Text("\(count)").font(.system(size: 90)).foregroundColor(.white)
            Text("Unique Species").foregroundColor(.white).font(.headline)
        }.padding(30).frame(width: 200, height: 200).background(LinearGradient(gradient: Gradient(colors: [Color(red: 7/255, green: 217/255, blue: 139/255), Color("dharc-green")]), startPoint: .top, endPoint: .bottom)).cornerRadius(30.0)
    }
}

struct SpeciesWidget_Previews: PreviewProvider {
    static var previews: some View {
        SpeciesWidget()
    }
}
