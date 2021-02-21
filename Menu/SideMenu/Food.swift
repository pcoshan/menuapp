//
//  Food.swift
//  SideMenu
//
//  Created by Patrick Coshan on 12/2/21.
//
struct Burger: Decodable, Identifiable{
    let id: Int
    let name: String
    let image : String
    let vegan_friendly : Bool
    let desc : String
}

let Burgers: [Burger] = [
    
    .init(id: 0, name: "Cardi B", image: "CardiB",vegan_friendly : false, desc: "poison"),
    .init(id: 1, name: "Californa Love", image: "CaliLove",vegan_friendly : false, desc: "poison"),
    .init(id: 2, name: "Big Poppa", image: "BigPoppa",vegan_friendly : false, desc: "poison"),
    .init(id: 3, name: "Gods Plan", image: "GodsPlan",vegan_friendly : false, desc: "fire"),
    .init(id: 4, name: "Hot Kim", image: "HotKim",vegan_friendly : false, desc: "fire"),
    .init(id: 5, name: "Kiki", image: "Kiki",vegan_friendly : false, desc: "fire"),
    .init(id: 6, name: "Spice Girl", image: "SpiceGirl",vegan_friendly : false, desc: "fire"),
    .init(id: 7, name: "Tinnie Tempah", image:"TinieTempa",vegan_friendly : false, desc: "fire"),
    .init(id: 8, name: "Spice Girl", image: "SpiceGirl",vegan_friendly : false, desc: "fire"),
    .init(id: 9, name: "Adele", image: "Adele",vegan_friendly : false, desc: "fire"),
    .init(id: 10, name: "MiSoGood", image: "MiSogood",vegan_friendly : false, desc: "fire"),
    .init(id: 11, name: "The Swiss", image: "TheSwiss",vegan_friendly : false, desc: "fire"),
    .init(id: 12, name: "Mozzarella Sticks", image: "Mozza",vegan_friendly : false, desc: "fire"),
    .init(id: 13, name: "Popcorn Chicken", image: "Popcorn",vegan_friendly : false, desc: "fire"),
    .init(id: 14, name: "Quesa Tacos", image: "Tacos",vegan_friendly : false, desc: "fire"),
    
    
]
