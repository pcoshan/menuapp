//
//  FoodView.swift
//  SideMenu
//
//  Created by Patrick Coshan on 12/2/21.
//

import SwiftUI

struct cell: View {
    
    let burger : Burger
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading) {
                Image(burger.image)
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .padding(.all, 10)
                
                    Text(burger.name)
                        .font(.headline)
                        .foregroundColor(Color.black)
                        .padding(.horizontal, 30.0)
            }
        }
    }
}

struct cell_Previews: PreviewProvider {
    static var previews: some View {
        cell(burger: Burgers[2])
    }
}
