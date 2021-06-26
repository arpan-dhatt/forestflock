//
//  Dashboard.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading) {
                Text("Daeshboard").font(.bold(.system(size: 80))()).padding(.leading, 45.0)
                VStack {
                    HStack(spacing: 30.0) {
                        FireWidget()
                        SpeciesWidget()
                        HumanWidget()
                    }.padding([.leading, .trailing], 40.0)
                    HStack {
                        Text("graph")
                    }
                    HStack {
                        Text("coverage")
                        Text("health")
                    }
                }.padding(.top, 30.0)
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
