//
//  RecordsModel.swift
//  sampleswift
//
//  Created by CBL-MAC-18-10-2023 on 04/02/26.
//

import Foundation


enum RecordCategory{
    case people
    case organization
    case artifact
}


struct Record: Identifiable{
    let id: UUID
    let title: String
    let category: RecordCategory
    let department : String
    let location: String
    let description: String
    let updatedAt: Date
    let tags: [String]
    let imageURL: String 
}
