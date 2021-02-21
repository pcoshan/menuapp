//
//  DrinkView.swift
//  SideMenu
//
//  Created by Patrick Coshan on 12/2/21.
//

import SwiftUI

struct DrinksView: View {
    
    private let gridItems = [GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView(.horizontal){
                LazyHGrid(rows: gridItems, spacing: 50){
                    ForEach(0..<4) { curr in
                        Dcell( Drink: Drinks[curr])
                    }
                }
            }
        }
        //.navigationBarHidden(true)
    }
}

struct DrinksView_Previews: PreviewProvider {
    static var previews: some View {
        DrinksView()
    }
}

