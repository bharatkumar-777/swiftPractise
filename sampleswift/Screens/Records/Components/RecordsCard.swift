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
            topInfoSection
            highlightSection
            tagSection
            descriptionSection
            footerSection
            
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
        HStack{
            
        }
    }
}


private extension RecordsCard{
    var highlightSection : some View {
        VStack{
            
        }
    }
}

private extension RecordsCard  {
    var tagSection : some View {
        VStack{
            
        }
    }
}


private extension RecordsCard{
    var descriptionSection : some View{
        Text(record.description)
    }
}


private extension RecordsCard{
    var footerSection: some View {
        HStack{
            
        }
    }
}


#Preview {
    RecordsCard(record: Record(
        id:UUID(),
        title: "Abdulla Al Kaabi",
        category: .people,
                   location: "Al Ain",
                   description: "Experienced heritage professional overseeing development control processes and comprehensive documentation of cultural heritage sites in the Al Ain region.",
                   updatedAt: Date(),
                   tags: ["Heritage Management"]
    ), onTap:{})
}
