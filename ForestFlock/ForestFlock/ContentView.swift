//
//  ContentView.swift
//  ForestFlock
//
//  Created by Arpan Dhatt on 6/25/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        if viewModel.page == "home" {
            MainView()
        }
        else {
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewModel())
    }
}
