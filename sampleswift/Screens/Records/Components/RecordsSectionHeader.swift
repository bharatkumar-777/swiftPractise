//
//  RecordsSectionHeader.swift
//  sampleswift
//
//  Created by CBL-MAC-18-10-2023 on 04/02/26.
//

import SwiftUI


private struct RecordsSectionHeaderPreview: View {

    @State private var expanded = true

    var body: some View {
        RecordsSectionHeader(
            title: "Heritage Records",
            recordCount: 17,
            isExpanded: $expanded
        )
        .padding()
    }
}

struct RecordsSectionHeader: View {
    
    let title:String
    let recordCount:Int
    
    @Binding var isExpanded :Bool
    
    
    
    var body : some View {
        HStack(alignment: .top){
            VStack(alignment: .leading){
                Text("📋 \(title)").font(.headline)
                Text("\(recordCount) records found")
               
            }
            Spacer()
            Button{
                isExpanded.toggle()
            } label: {
                HStack(spacing:4){
                    Image(systemName: isExpanded ? "chevron.up":"chevron.down")
                    Text(isExpanded ? "Show":"hide")
                }.font(.caption)
                    .padding(.horizontal,10)
                    .padding(.vertical,6)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
            }
            
        }.padding(.horizontal,12)
            .padding(.top,16)
    }
}



#Preview {
    RecordsSectionHeaderPreview()
}
