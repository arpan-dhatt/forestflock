//
//  HealthWidget.swift
//  ForestFlock
//
//  Created by Arpan Dhatt on 6/26/21.
//

import SwiftUI

struct HealthWidget: View {
    @State var correct: Int = 9;
    @State var total: Int = 12;
    
    var body: some View {
        HStack {
            VStack {
                Text("\(correct)").font(.system(size: 40)).foregroundColor(.white)
                Text("Correct Events").foregroundColor(.white).font(.headline)
            }
            Spacer()
            VStack {
                Text("\(total)").font(.system(size: 40)).foregroundColor(.white)
                Text("Total Events").foregroundColor(.white).font(.headline)
            }
        }.padding(30).frame(width: 425, height: 200).background(LinearGradient(gradient: Gradient(colors: [Color(red: 245/255, green: 238/255, blue: 44/255), Color(red: 245/255, green: 195/255, blue: 44/255)]), startPoint: .top, endPoint: .bottom)).cornerRadius(15.0)
    }
}

struct HealthWidget_Previews: PreviewProvider {
    static var previews: some View {
        HealthWidget()
    }
}
