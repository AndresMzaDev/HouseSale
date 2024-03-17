//
//  dataHouse.swift
//  HouseSale
//
//  Created by andres meza on 10/3/24.
//

import Foundation

struct HousesCards: Identifiable, Hashable {
    var id: UUID = .init()
    var direction: String
    var state: String
    var price: Double
    var room: String
    var bathroom: String
    var squareMeter: String
    var photos: String
}

var houseCards : [HousesCards] = [
    .init(direction: "12750 RAMBLING ROSE", state: "San Antonio, TX 78253", price: 300034, room: "4", bathroom: "6", squareMeter: "2,566", photos: "House1."),
    .init(direction: "12750 RAMBLING ", state: "San Antonio, 253", price: 300034, room: "4", bathroom: "6", squareMeter: "3,500", photos: "House2.")

]
   

