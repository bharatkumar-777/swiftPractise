//
//  RecordsCard.swift
//  sampleswift
//
//  Created by CBL-MAC-18-10-2023 on 04/02/26.
//

import SwiftUI

struct RecordsCard: View{
    
    let record : Record
    let onTap: ()->Void
    
    var body : some View{
        VStack{
            
        }.padding(20)
            .background(Color.white)
            .cornerRadius(18)
            .shadow(color: Color.black.opacity(0.06), radius: 10,x:0,y:4)
            .onTapGesture {
                onTap()
            }
        
    }
}

private extension RecordsCard{
    var topInfoSection: some View {
        h
    }
}
