//
//  Header.swift
//  sampleswift
//
//  Created by CBL-MAC-18-10-2023 on 30/01/26.
//
import SwiftUI

struct MapHeaderView:View    {
    
    var body : some View {
        HStack(spacing:12){
            Text("Adher").font(.headline).foregroundStyle(.white)
            Spacer()
   
             Text("Search")
                .padding(8)
                .background(Color.white.opacity(0.2))
                .cornerRadius(8)
                .foregroundColor(.white)
            
        }.padding().background(Color.brandOrange)
    }
}


#Preview {
    MapHeaderView()
}
