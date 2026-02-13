//
//  RecordsViewModel.swift
//  sampleswift
//
//  Created by CBL-MAC-18-10-2023 on 04/02/26.
//

import Foundation



struct UsersResponse: Decodable{
    let users:[UserDTO]
}

struct UserDTO: Decodable{
    let id: Int
       let firstName: String
       let lastName: String
       let image: String
       let company: CompanyDTO
       let address: AddressDTO
}


struct CompanyDTO: Decodable {
    let title: String
    let department: String
}

struct AddressDTO: Decodable {
    let city: String
}




final class RecordsViewModel: ObservableObject{
    @Published var records: [Record] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    @MainActor
    func fetchRecords() async {
        isLoading = true;
        errorMessage = nil;
        
        guard let url = URL(string: "https://dummyjson.com/users")else {
            errorMessage = "Invalid Url"
            isLoading = false
            return
            
        }
        
        do {
            let (data,_) = try await URLSession.shared.data(from: url)
            let decoded = try JSONDecoder().decode(UsersResponse.self,from:data)
            
            records = decoded.users.map{
                user in Record(
                    id: UUID(),
                    title: "\(user.firstName) \(user.lastName)",
                    category: .organization,
                    department: user.company.department,
                    location: user.address.city,
                    description: user.company.title,
                    updatedAt: Date(),
                    tags: [],
                    imageURL: user.image
                
                    
                    
                    
                )
            }
            
            
        }catch {
            errorMessage = error.localizedDescription
        }
        
        
        
    }
    
    
    
    
   
    
}
