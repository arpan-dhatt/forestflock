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
                Text("Dashboard").font(.system(size: 80, weight: .bold)).padding(.leading, 45.0)
                Divider()
                VStack(alignment: .leading) {
                    Text("Human Events").font(.system(size: 40, weight: .bold)).padding(.leading, 45.0).padding(.top, 50).padding(.bottom, 50)
                    ScrollView(.horizontal) {
                        HStack(spacing: 30.0) {
                            FireWidget()
                            SpeciesWidget(count: 13, desc: "Total")
                            HumanWidget(desc: "Illegal")
                            CoverageWidget()
                            HealthWidget()
                        }.padding([.leading, .trailing], 40.0).padding(.bottom, 50)
                    }
                    HStack {
                        GraphView().frame(width: UIScreen.main.bounds
                                            .width*0.9, height: 380)
                    }.padding([.leading, .trailing], 40.0)
                }.padding(.top, 30.0)
                VStack(alignment: .leading) {
                    Text("Natural Events").font(.system(size: 40, weight: .bold)).padding(.leading, 45.0).padding(.top, 100).padding(.bottom, 50)
                    ScrollView(.horizontal) {
                        HStack(spacing: 30.0) {
                            SpeciesWidget(desc: "Total")
                            HumanWidget(desc: "Species")
                            FireWidget()
                            CoverageWidget()
                            HealthWidget()
                        }.padding([.leading, .trailing], 40.0).padding(.bottom, 50)
                    }
                    HStack {
                        GraphView(data: [12,7,19,23,12,32,8,54,12]).frame(width: UIScreen.main.bounds
                                            .width*0.9, height: 380)
                    }.padding([.leading, .trailing], 40.0)
                }.padding(.top, 30.0)
                VStack(alignment: .leading) {
                    Text("Weather").font(.system(size: 40, weight: .bold)).padding(.leading, 45.0).padding(.top, 50).padding(.bottom, 50)
                    ScrollView(.horizontal) {
                        HStack(spacing: 30.0) {
                            RainWidget()
                            SpeciesWidget(count: 10, desc: "Dayd Of Precipitation")
                            HumanWidget(desc: "Extremes")
                            CoverageWidget()
                            HealthWidget()
                            FireWidget()
                        }.padding([.leading, .trailing], 40.0).padding(.bottom, 50)
                    }
                    HStack {
                        GraphView(data: [50,70,23,90,10,32,80,54,30]).frame(width: UIScreen.main.bounds
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
