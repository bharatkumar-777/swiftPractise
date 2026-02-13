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
        VStack(alignment: .leading){
            topInfoSection
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
        HStack(alignment: .top,spacing: 12){
            AsyncImage(url: URL(string:record.imageURL)){
                phase in
                    switch phase {
                    case .empty:
                        ProgressView()

                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()

                    case .failure:
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.gray)

                    @unknown default:
                        EmptyView()
                    }
                
                
              
            }.frame(width: 60,height: 60).clipShape(Circle())
            VStack(alignment: .leading,spacing: 6){
                HStack{
                    Text(record.title).font(.headline).fontWeight(.semibold)
                    Spacer()
                    Text("categoryText")
                        .font(.caption)
                        .fontWeight(.light)
                        .padding(.horizontal,10)
                        .padding(.vertical,4)
                        .background(Color.gray.opacity(0.12))
                        .cornerRadius(12)
                }
                HStack(spacing:4){
                    Image(systemName:"mappin.and.ellipse").font(.caption).foregroundStyle(.red)
                    Text(record.location).font(.subheadline).foregroundStyle(.gray)
                }
                
                highlightSection
                tagSection
                
            }
        }
    }
}


private extension RecordsCard{
    var highlightSection : some View {
        VStack(alignment: .leading,spacing: 4){
            HStack(spacing: 6){
                Image(systemName: "person.fill")
                Text("\(record.department)")
                    .font(Font.system(size: 13))
                    .fontWeight(.medium).foregroundStyle(Color.purple.opacity(0.9))
                Spacer()
                
            }
            Text("Tenure: 2008-present")
                          .font(.caption)
                          .foregroundColor(.gray)
        
            
        }.padding(14)
            .background(Color.purple.opacity(0.08))
            .overlay(
                RoundedRectangle(cornerRadius: 14)
                    .stroke(Color.purple.opacity(0.25),lineWidth: 1)
            ).cornerRadius(14)
    }
}

private extension RecordsCard  {
    var tagSection : some View {
        
            HStack(alignment: .top,spacing: 4){
                ForEach(record.tags,id: \.self){
                    tag in Text(tag).font(.caption)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                        .background(Color.green.opacity(0.15))
                        .foregroundColor(.green)
                        .cornerRadius(10)
                }
            }.padding(.top,2)
    
        
    }
}


private extension RecordsCard{
    var descriptionSection : some View{
        Text(record.description)
            .font(Font.system(size:12))
            .padding(.top,3)
    }
}


private extension RecordsCard{
    var footerSection: some View {
        HStack{
            Text("Updated: (formattedDate) ")
                .font(Font.system(size: 13))
                .foregroundStyle(Color.gray.opacity(0.8))
                .padding(.top,4)
            
            Spacer()
            
            Button(action:onTap){
                Text("View Details")
                    .font(.caption)
                    .fontWeight(.medium)
                    .padding(.horizontal,12)
                    .padding(.vertical,8)
                    .background(Color.orange)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
                     
            }.padding(.top,4)
            
            
        }
    }
}


#Preview {
    RecordsCard(record: Record(
        id:UUID(),
        title: "Abdulla Al Kaabi",
        category: .people,
        department: "Development Control & Documentation Section Head",
                   location: "Al Ain",
                   description: "Experienced heritage professional overseeing development control processes and comprehensive documentation of cultural heritage sites in the Al Ain region.",
                   updatedAt: Date(),
                   tags: ["Heritage Management"],
                   imageURL: "https://hws.dev/paul2.jpg"
                   
    ), onTap:{})
}
