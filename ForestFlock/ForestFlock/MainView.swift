//
//  MainView.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var viewModel: ViewModel
    @State var tabSelection = 0

    var body: some View {
        TabView(selection: $tabSelection){
            MapView().tabItem { Label("Map", systemImage:"map")}.tag(0)
            Dashboard().tabItem { Label("Dashbord", systemImage:"bonjour") }.tag(1)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(ViewModel())
    }
}
