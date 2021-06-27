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
                Text("Daeshboard").font(.system(size: 80, weight: .bold)).padding(.leading, 45.0)
                VStack(alignment: .leading) {
                    Text("Human Events").font(.bold(.system(size: 40))()).padding(.leading, 45.0)
                    ScrollView(.horizontal) {
                        HStack(spacing: 30.0) {
                            FireWidget()
                            SpeciesWidget()
                            HumanWidget()
                            CoverageWidget()
                            HealthWidget()
                        }.padding([.leading, .trailing], 40.0)
                    }
                    HStack {
                        GraphView().frame(width: UIScreen.main.bounds
                                            .width*0.9, height: 380)
                    }.padding([.leading, .trailing], 40.0)
                }.padding(.top, 30.0)
                VStack(alignment: .leading) {
                    Text("Natural Events").font(.bold(.system(size: 40))()).padding(.leading, 45.0)
                    ScrollView(.horizontal) {
                        HStack(spacing: 30.0) {
                            SpeciesWidget()
                            HumanWidget()
                            FireWidget()
                            CoverageWidget()
                            HealthWidget()
                        }.padding([.leading, .trailing], 40.0)
                    }
                    HStack {
                        GraphView(data: [12,7,19,23,12,32,8,54,12]).frame(width: UIScreen.main.bounds
                                            .width*0.9, height: 380)
                    }.padding([.leading, .trailing], 40.0)
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
