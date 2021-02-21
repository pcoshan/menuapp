//
//  Drinkcell.swift
//  SideMenu
//
//  Created by Patrick Coshan on 12/2/21.
//
import SwiftUI

struct Dcell: View {
    
    let Drink : Drink
    
    var body: some View {
        ZStack{
            VStack{
                
                Image(Drink.image)
                    .resizable()
                    .aspectRatio(contentMode:  .fit)
                    .frame(width: 380, height: 400)
                    .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                
                HStack{
                    Text(Drink.name)
                        .font(.title)
                }
            }
            .frame(width: 400, height: 410)
        }
    }
}

struct Dcell_Previews: PreviewProvider {
    static var previews: some View {
        Dcell(Drink: Drinks[2])
    }
}
