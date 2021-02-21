//
//  SideMenuView.swift
//  SideMenu
//
//  Created by Patrick Coshan on 12/2/21.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                SideMenuHeader( isShowing: $isShowing).foregroundColor(.white)
                    .frame(height: 240)
                
                ForEach(SideMenuViewModel.allCases, id: \.self){ option in
                    NavigationLink(
                        destination: Text("This page is missing"),
                        label: {
                            SideMenuOptionView(viewModel: option)
                        })
                }
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}

