//
//  ForestFlockApp.swift
//  ForestFlock
//
//  Created by Arpan Dhatt on 6/25/21.
//

import SwiftUI

@main
struct ForestFlockApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ViewModel())
        }
    }
}
