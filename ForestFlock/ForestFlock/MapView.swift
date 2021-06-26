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
            HStack{
                RecentEvents()
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView().environmentObject(ViewModel())
    }
}
