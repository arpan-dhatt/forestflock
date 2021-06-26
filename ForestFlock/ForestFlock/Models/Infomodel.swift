//
//  Infomodel.swift
//  ForestFlock
//
//  Created by user175571 on 6/26/21.
//

import Foundation
import SwiftUI


struct InfoModel {
    
    
    
}

enum domicile: String, CaseIterable, Identifiable{
    case house = "house"
    case apartment = "apartment"
    case commercial = "commercial"
    
    var id: String{self.rawValue}
}

