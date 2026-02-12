//
//  Records.swift
//  sampleswift
//
//  Created by CBL-MAC-18-10-2023 on 30/01/26.
//

import SwiftUI

struct RecordsScreen:View{
    
    @State var expanded = true
    
    var body:some View{
        VStack{
            
            RecordsSectionHeader(title: "Heritage Records",
                                 recordCount: 17,
                                 isExpanded: $expanded)
            Text("Records")
            Spacer()
        }.frame(maxWidth:.infinity,maxHeight: .infinity)

    }
}


#Preview {
    RecordsScreen()
}
