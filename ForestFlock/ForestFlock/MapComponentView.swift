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
    @State var showingSheet = false
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $coordinateRegion, annotationItems: viewModel.devices){place in
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
                                let index: Int = viewModel.devices.firstIndex(where: {$0.id == place.id})!
                                viewModel.devices[index].show.toggle()
                                print("success")
                            }
                        if place.show {
                            VStack(alignment: .leading){
                                Text("ID: \(place.device_id)").font(.title2).bold()
                                Text("Latitude: \(place.latitude, specifier: "%.2f")").padding(.top)
                                Text("Longitude: \(place.longitude, specifier: "%.2f")").padding(.bottom)
                                Text("Type: \(place.type)")
                                Button(action:{
                                    
                                }){
                                    
                                }
                            }.frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding().background(Color.white).cornerRadius(10.0).shadow(radius: 10.0).offset(x:0, y:-100)
                        }
                        
                    }
                    
                }
            }.ignoresSafeArea(.all)
        }.sheet(isPresented: $showingSheet){
            
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

