//
//  ContentView.swift
//  sampleswift
//
//  Created by CBL-MAC-18-10-2023 on 29/01/26.
//

import SwiftUI
import MapKit





struct HomeView: View {
    
    @State private var selectedTab: TabItem = .map
    
    let position = MapCameraPosition.region(
        MKCoordinateRegion(
                  center: CLLocationCoordinate2D(
                      latitude: 24.4539,
                      longitude: 54.3773
                  ),
                  span: MKCoordinateSpan(
                      latitudeDelta: 0.5,
                      longitudeDelta: 0.5
                  ),
                
              )
    )
    var body: some View {
        ZStack{
           AppRouter(selectedtab: selectedTab, mapPosition: position)
            if selectedTab == .map {
                MapFloatingButtons()
            }
        }.safeAreaInset(edge: .top){
            MapHeaderView()
        }.safeAreaInset(edge: .bottom){
             BottomTabBar(selectedTab: $selectedTab)
        }
        
    }
}

#Preview {
    HomeView()
}
