//
//  SideMenuHeader.swift
//  SideMenu
//
//  Created by Patrick Coshan on 12/2/21.
//

import SwiftUI

struct SideMenuHeader: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Button(action: {
                withAnimation(.spring()){
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
            VStack(alignment: .leading){
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom,16)
                
                Text("Have a good time!")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("@GangGang")
                    .font(.system(size: 14))
                    .padding(.bottom,32)
                
                HStack(spacing: 12){
                    HStack(spacing: 4){
                        Text("Navigation")
                        Text("Menu")
                    }
                    Spacer()
                }
                
                
                Spacer()
            }.padding()
        }
    }
}

struct SideMenuHeader_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeader(isShowing: .constant(true))
    }
}
