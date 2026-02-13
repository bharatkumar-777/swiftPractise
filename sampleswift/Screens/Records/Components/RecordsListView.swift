//
//  RecordsListView.swift
//  sampleswift
//
//  Created by Prince on 13/02/26.
//

import SwiftUI


struct RecordsListView: View {
    
    let records:[Record]
    let onSelect :(Record)->Void
    
    
    var body: some View {
        ScrollView{
            LazyVStack(spacing:20){
                ForEach(records) { record in
                    RecordsCard(
                        record: record,
                        onTap:{
                            onSelect(record)
                        }
                    )
                }
            }
        } .padding(.horizontal)
          .padding(.top, 16)
          
          
    }
}
