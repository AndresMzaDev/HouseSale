//
//  MapsView.swift
//  HouseSale
//
//  Created by andres meza on 16/3/24.
//

import SwiftUI
import MapKit


extension CLLocationCoordinate2D{
    static let parking  =  CLLocationCoordinate2D(latitude: 42.354528, longitude: -71.068369)
}

struct MapsView: View {
    
    var body: some View {
        Map{
            Annotation("Parking", coordinate: .parking) {
                ZStack(content: {
                    RoundedRectangle(cornerRadius: 5).fill(.background)
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.secondary, lineWidth: 5)
                    Image(systemName: "car")
                        .padding(5)
                })
            }.annotationTitles(.hidden)
        }
      }
}


#Preview {
    MapsView()
}
