//
//  MapScreen.swift
//  sampleswift
//
//  Created by CBL-MAC-18-10-2023 on 30/01/26.
//

import SwiftUI
import MapKit


struct MapScreen: View{
    let position: MapCameraPosition
    var body : some View{
        ZStack{
            Map(position: .constant(position)).ignoresSafeArea()
        }
    }
}
