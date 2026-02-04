//
//  TabItem.swift
//  sampleswift
//
//  Created by CBL-MAC-18-10-2023 on 30/01/26.
//

import Foundation


enum TabItem: String, CaseIterable {
    
    case map="Map"
    case records="Records"
    case monitor="Monitor"
    case dashboard="Dashboard"
    case profile="Profile"
    
    var icon:String{
        switch self {
        case .map: return "map"
              case .records: return "doc.text"
              case .monitor: return "shield"
              case .dashboard: return "chart.bar"
              case .profile: return "person"
        }
    }
}
