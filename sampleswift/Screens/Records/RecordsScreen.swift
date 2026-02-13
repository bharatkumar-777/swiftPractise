//
//  Records.swift
//  sampleswift
//
//  Created by CBL-MAC-18-10-2023 on 30/01/26.
//

import SwiftUI

struct RecordsScreen:View{
    
    @State var expanded = true
    @StateObject private var viewModal = RecordsViewModel()
    
    var body:some View{
        VStack{
            
            RecordsSectionHeader(title: "Heritage Records",
                                 recordCount: 17,
                                 isExpanded: $expanded)
           
            RecordsListView(records:viewModal.records,onSelect: {
                record in  print("Selected:", record)
            })
            
        }.frame(maxWidth:.infinity,maxHeight: .infinity)
            .task {
                await viewModal.fetchRecords()
            }

    }
}


#Preview {
    RecordsScreen()
}
