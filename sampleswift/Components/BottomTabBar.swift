//
//  BottomTabBar.swift
//  sampleswift
//
//  Created by CBL-MAC-18-10-2023 on 30/01/26.
//

import SwiftUI


struct BottomTabBar: View{
    
    @Binding var selectedTab: TabItem
    var body : some View{
        HStack{
            ForEach(TabItem.allCases,id:\.self){
                tab in VStack(spacing:4){
                    Image(systemName: tab.icon).font(.system(size: 18,weight: .medium))
                    Text(tab.rawValue).font(.caption)
                }.foregroundColor(
                    selectedTab == tab ? .brandOrange : .gray
                ).frame(maxWidth:.infinity).padding(.vertical,8)
                    .padding(.vertical,8)
                    .contentShape(Rectangle())
                    .onTapGesture{
                        withAnimation(.spring(response:0.3,dampingFraction:0.7)){
                        selectedTab = tab
                    }}
            }
        }.padding().background(Color.white)
    }
}



