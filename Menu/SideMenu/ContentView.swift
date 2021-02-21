//
//  ContentView.swift
//  SideMenu
//
//  Created by Patrick Coshan on 12/2/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowing = false;
    
    var body: some View {
        NavigationView{
            
            ZStack {
                if isShowing{
                    SideMenuView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x: isShowing ? 300 : 0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()){
                            isShowing.toggle()
                        }
                    },
                    label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
                    .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        NavigationView{
            ZStack {
                VStack {
                    Image("1").resizable().scaledToFit()
                    Text("Welcome to Gang Gang!")
                        .padding()
                        .font(.title)
                        .foregroundColor(.black)
                    Spacer()
                    NavigationLink(
                        destination: cellview(),
                        label: {
                            Text("FOOD")
                        })
                    Spacer()
                    NavigationLink(
                        destination: DrinksView(),
                        label: {
                            Text("DRINKS")
                        })
                    Spacer()
                    NavigationLink(
                        destination: Text("This page is under construction!"),
                        label: {
                            Text("MERCH")
                        })
                    Spacer()
                }
                .navigationBarHidden(true)
            }
        }
    }
}





