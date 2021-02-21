//
//  Drink.swift
//  SideMenu
//
//  Created by Patrick Coshan on 12/2/21.
//

import Foundation
import SwiftUI

struct Drink: Decodable, Identifiable{
    let id: Int
    let name: String
    let image : String
    let desc : String
}

let Drinks : [Drink] = [
    .init(id: 0, name: "Coffee", image: "Coffee" , desc: "Tasty Coffee"),
    .init(id: 1, name: "Juices", image: "Juices" , desc: "Tasty Coffee"),
    .init(id: 2, name: "OJ", image: "Oj" , desc: "Tasty Coffee"),
    .init(id: 3, name: "Soda", image: "Soda" , desc: "Tasty Coffee")
]
