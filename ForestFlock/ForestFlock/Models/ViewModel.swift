//
//  ViewModel.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var model = InfoModel();
    
    //Transition Variables
    @Published var page = "home"
    @Published var markers = [marker(named: "1", latitude: 32.96773, longitude: -97.13125, color: .gray), marker(named: "2", latitude: 32.98047, longitude: -97.00058, color: .green), marker(named: "3", latitude: 32.85617, longitude: -97.16375, color: .gray), marker(named: "4", latitude: 32.72081, longitude: -97.10330, color: .gray), marker(named: "5", latitude: 32.75777, longitude: -96.86366, color: .gray)]
    @State var showingSheet = false
}
