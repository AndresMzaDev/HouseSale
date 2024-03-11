//
//  headerComponent.swift
//  HouseSale
//
//  Created by andres meza on 10/3/24.
//

import SwiftUI

struct headerComponent: View {
    var body: some View {
        HStack(content: {
            Button ( action:
                        btnAction
            ) {
                Text("Home App")
                    .fontWeight(.bold)
                    .padding()
                    .foregroundStyle(Color("primaryColor"))
                    .frame( height: 50)
                    .background(RoundedRectangle(cornerRadius: 30).stroke( Color("primaryColor") ,lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/).fill(.white))
                
            }
            Spacer()
            Image(systemName: "bell.badge")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            Image("userProfile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .background(Color("backCreateAccount"))
                .clipShape(Circle())
            
            
        })
        .padding()
    }
}

#Preview {
    headerComponent()
}
