//
//  AppRouter.swift
//  sampleswift
//
//  Created by CBL-MAC-18-10-2023 on 30/01/26.
//

import SwiftUI
import MapKit

struct AppRouter: View{
    let selectedtab: TabItem
    let mapPosition:MapCameraPosition
    
    var body: some View{
        switch selectedtab {
        case .map:
            MapScreen(position: mapPosition)
        case .records:
             RecordsScreen()
        case .monitor:
            MonitorScreen()
        case .dashboard:
            DashboardScreen()
        case .profile:
            ProfileScreen()
        }
    }
}
