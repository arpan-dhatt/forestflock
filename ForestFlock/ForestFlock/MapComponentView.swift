//
//  MapComponentView.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import SwiftUI
import MapKit

struct MapComponentView: View {
    @State var coordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 32.88715, longitude: -97.04404), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $coordinateRegion, annotationItems: viewModel.markers){place in
                //MapMarker(coordinate: place.coordinate, tint: place.color)
                MapAnnotation(
                    coordinate: place.coordinate,
                    anchorPoint: CGPoint(x: 0.5, y: 0.7)
                ) {
                    ZStack{
                        Image(systemName: "mappin.circle.fill")
                            .font(.title)
                            .foregroundColor(.red)
                            .onTapGesture {
                                let index: Int = viewModel.markers.firstIndex(where: {$0.id == place.id})!
                                viewModel.markers[index].show.toggle()
                                print("success")
                            }
                        if place.show {
                            VStack{
                                Text("Hello")
                            }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color.white).offset(x:0, y:-100)
                        }
                        
                    }
                    
                }
            }.ignoresSafeArea(.all).onTapGesture {
                viewModel.showingSheet = true
            }
        }
    }
}

struct MapComponentView_Previews: PreviewProvider {
    static var previews: some View {
        MapComponentView().environmentObject(ViewModel())
    }
}

struct marker:Identifiable {
    var id = UUID()
    let named: String
    let latitude: Double
    let longitude: Double
    let color: Color
    var show = false
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

