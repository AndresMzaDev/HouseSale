//
//  CarouselHouses.swift
//  HouseSale
//
//  Created by andres meza on 10/3/24.
//

import SwiftUI

struct CarouselHouses: View {
    
    @State private var favoriteHouse = false
    @State private var toggleHeart = true
      let dataCard:HousesCards
    
    var body: some View {
        ZStack(alignment:.top ,  content: {
            Image(dataCard.photos+"1")
                .resizable()
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
                        Button(action: {
                            toggleHeart.toggle()
                        } , label: {
                            Image(systemName: toggleHeart ? "heart": "heart.fill")
                                .resizable()
                                .foregroundStyle(toggleHeart ? .white: .red)
                                .padding()
                                .frame( width: 50 , height: 50)
                                .background(RoundedRectangle(cornerRadius: 30).fill(Color("primaryColor").opacity(toggleHeart ? 0.5 : 0.1)))
                                .animation(.easeInOut(duration: 5), value: true)
                        }).buttonStyle(ScaleButtonStyle())

                    }
                })
                Spacer()
                
                VStack(alignment:.leading,    content: {
                    HStack(content: {
                        Text(dataCard.direction)
                           
                            
                        Spacer()
                        Text("$ 5,430")
                    })
                    .bold()
                    .foregroundStyle(Color("primaryColor"))
                    .font(.title2)
                   
                    
                    Text(dataCard.state)
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
        .frame(height: 300)
        
    }
}

struct ScaleButtonStyle  : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.scaleEffect(configuration.isPressed ? 2  : 1)
    }
}

//#Preview {
//    CarouselHouses( dataCard: <#HousesCards#>)
//}
