//
//  AllDevicesView.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import SwiftUI

struct AllDevicesView: View {
    @State var collapsed = true
    @State var showingSheet = false
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        ZStack{
            HStack{
                Spacer()
                HStack{
                    VStack{
                        Spacer()
                        Button(action: {collapsed.toggle()}){
                            Image(systemName: self.collapsed ? "chevron.left" : "chevron.right").font(.system(size: 50)).foregroundColor(.white)
                        }.padding().background(Color("dharc-green")).cornerRadius(10.0)
                        Spacer()
                    }.padding()
                    VStack{
                        ScrollView{
                            Text("All Nodes").font(.largeTitle).bold().padding(.vertical, 50)
                            ForEach(viewModel.devices, id: \.id){device in
                                DeviceCard(type: device.type, latitude: device.latitude, longitude: device.longitude, device_id: device.device_id, collapsed: $collapsed, internalCollapsed: true).padding(.vertical).onTapGesture {
                                        viewModel.selectedDeviceID = device.device_id
                                        showingSheet.toggle()
                                    }
                            }
                        }
                        Spacer()
                    }.frame(minWidth: 0, maxWidth: collapsed ? 0 : 400, minHeight: 100).animation(.easeInOut).background(Color.white).cornerRadius(10.0).shadow(radius: 10.0)
                }
                
            }
        }.sheet(isPresented: $showingSheet){
            Devicesheet(device_id: viewModel.selectedDeviceID)
        }
    }
}

struct AllDevicesView_Previews: PreviewProvider {
    static var previews: some View {
        AllDevicesView().environmentObject(ViewModel())
    }
}
