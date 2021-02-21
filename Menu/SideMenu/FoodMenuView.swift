//
//  FoodMenuView.swift
//  SideMenu
//
//  Created by Patrick Coshan on 12/2/21.
//
import SwiftUI

struct cellview: View {
    
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        
        ZStack {
            NavigationView{
                ScrollView{
                    LazyVGrid(columns: gridItems, spacing: 20){
                        ForEach(0..<14) { curr in
                            cell( burger: Burgers[curr])
                        }
                    }
                }
            }
        }//.navigationBarHidden(true)
    }
}

struct cellview_Previews: PreviewProvider {
    static var previews: some View {
        cellview()
            .preferredColorScheme(.light)
    }
}
