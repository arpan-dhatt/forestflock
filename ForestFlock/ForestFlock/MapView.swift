//
//  MapView.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import SwiftUI

struct MapView: View {
    @EnvironmentObject var viewModel: ViewModel

    var body: some View {
        ZStack{
            MapComponentView()
            VStack{
                VStack{
                    Text("Non-Biological Activites").font(.largeTitle).bold()
                    Text("Forest Flock").font(.title)
                }.padding(50).background(Color.white).cornerRadius(10.0).shadow(radius: 10.0)
                Spacer()
            }.padding()
                RecentEvents()
                AllDevicesView()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView().environmentObject(ViewModel())
    }
}
