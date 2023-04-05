//
//  MainTabView.swift
//  su smart bus
//
//  Created by admin on 3/4/2566 BE.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        TabView {
            
            ContentView()
                .tabItem {
                    VStack{
                        Image(systemName: "house.fill")
                        Text("Home")
                        }
                    }.tag(1)
                    
            InfobusView()
                .tabItem {
                    VStack{
                        Image(systemName: "info.square.fill")
                        Text("Info")
                        }
                    }.tag(2)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
            MainTabView()
            .environmentObject(State1())
        
    }
}
