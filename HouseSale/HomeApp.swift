//
//  HomeApp.swift
//  HouseSale
//
//  Created by andres meza on 10/3/24.
//

import SwiftUI

struct HomeApp: View {
    var body: some View {
        VStack(spacing:0, content: {
            headerComponent()
            SearchComponet()
            HStack(content: {
                Text("Popular Places")
                    .bold()
                Spacer()
                Text("View All")
                    .foregroundStyle(.gray)
                    .font(.caption)
            })
            CarouselHouses()
            Spacer()
        })
        .padding()
        
    }
}

#Preview {
    HomeApp()
}
