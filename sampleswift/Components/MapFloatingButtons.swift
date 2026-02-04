//
//  MapFlotingButtons.swift
//  sampleswift
//
//  Created by CBL-MAC-18-10-2023 on 30/01/26.
//

import SwiftUI


struct MapFloatingButtons: View{
    var body: some View{

        
        Color.clear.overlay(alignment:.topLeading){
            VStack{
                Text("🗺 Layers")
                               .padding(16)
                               .background(Color.white)
                               .cornerRadius(12)
                               .shadow(radius: 2)
                               .padding(.leading, 16)
                               .padding(.top, 16)
                
                Text("⬆️").font(.system(size: 24))
                                                   .padding(8)
                               .background(Color.white)
                               .cornerRadius(120)
                               .shadow(radius: 2)
                               .padding(.leading, -40)
                               .padding(.top, 8)
                Text("N").font(.system(size: 14))
                    .padding(.vertical,8).padding(.horizontal,12)
                               .background(Color.white)
                               .cornerRadius(12)
                               .shadow(radius: 2)
                               .padding(.leading, -40)
                               .padding(.top, 2)
            }
         
        }
        .overlay(alignment:.topTrailing){
            VStack(spacing: 8) {
                          ForEach(["+", "-", "🧭", "3D"], id: \.self) { item in
                              Text(item)
                                  .frame(width: 45, height: 45)
                                  .background(Color.white)
                                  .cornerRadius(10)
                                  .shadow(radius: 2)
                          }
                      }
                      .padding(.trailing, 16)
                      .padding(.top, 16)
        }.overlay(alignment:.bottomLeading){
            Text("🗺 Abu Dhabi heritage").fontWeight(.semibold)
                           .padding(8)
                           .background(Color.white)
                           .cornerRadius(8)
                           .shadow(radius: 2)
                           .padding(.leading, 16)
                           .padding(.top, 16)
        }
        
    }
}
