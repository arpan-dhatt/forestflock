//
//  GraphView.swift
//  ForestFlock
//
//  Created by Arpan Dhatt on 6/26/21.
//

import SwiftUI
import SwiftUICharts

struct GraphView: View {
    var data: [Double] = [37,7,23,54,32,12,23,8,43]
    var body: some View {
        LineView(data: data, title: "Event Frequency", legend: "Events per Week")
    }
}

struct GraphView_Previews: PreviewProvider {
    static var previews: some View {
        GraphView()
    }
}
