//
//  SearchComponet.swift
//  HouseSale
//
//  Created by andres meza on 10/3/24.
//

import SwiftUI

struct SearchComponet: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 50)
            .fill(Color("secondaryColor"))
            .overlay(
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(Color("primaryColor"))
                        .font(.title)
                        .padding()
                        .background(Color("colorBackground"))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    //                    Spacer()
                    VStack(alignment: .leading){
                        Text("Find Your New")
                            .foregroundStyle(Color("primaryColor"))
                            .multilineTextAlignment(.leading)
                            .font(.subheadline)
                            .fontWeight(.bold)
                        Text("Apartment, house, land and more")
                            .font(.caption)
                            .foregroundStyle(.gray)
                        
                    }
                    Spacer()
                    Button ( action:
                                btnAction
                    ) {
                        Image(systemName: "line.3.horizontal.decrease")
                            .foregroundStyle(Color("primaryColor"))
                            .padding()
                        
                    }
                }
                    .padding()
            )
            .frame(height: 80)
            .padding(8)
        
    }
}

func btnAction(){
    
}

#Preview {
    SearchComponet()
}
