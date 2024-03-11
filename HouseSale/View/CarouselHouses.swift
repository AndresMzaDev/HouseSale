//
//  CarouselHouses.swift
//  HouseSale
//
//  Created by andres meza on 10/3/24.
//

import SwiftUI

struct CarouselHouses: View {
    
    @State private var favoriteHouse = false
    
    var body: some View {
        ZStack(alignment:.top ,  content: {
            Image("house1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            VStack(  content: {
                HStack(content: {
                    Text("Open For Sale")
                        .bold()
                        .foregroundStyle(.white)
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 17).fill(Color("primaryColor").opacity(0.5)))
                    Spacer()
                    Button(action: {
                        favoriteHouse.toggle()
                        
                    }
                    ) {
                        Image(systemName: "heart")
                            .resizable()
                            .foregroundStyle(.white)
                            .padding()
                            .frame( width: 50 , height: 50)
                            .background(RoundedRectangle(cornerRadius: 30).fill(Color("primaryColor").opacity(0.5)))
                    }
                })
                .padding(.bottom, 50.0)
                
                VStack(alignment:.leading,    content: {
                    HStack(content: {
                        Text("11507 Morrow ST")
                           
                            
                        Spacer()
                        Text("$ 5,430")
                    })
                    .bold()
                    .foregroundStyle(Color("primaryColor"))
                    .font(.title2)
                   
                    
                    Text("Austin, TX")
                        .font(.caption)
                        .padding(.bottom)
                        .foregroundStyle(.gray
                        )
                        
                    Text("5 Beds - 3 Bath - 12.39m")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                    
                })
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(.white).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/))
            })
            .padding(6)
            
            
        })
        
    }
}

#Preview {
    CarouselHouses()
}
