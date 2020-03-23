//
//  ContentView.swift
//  Covid19Stats
//
//  Created by Onkar Singh on 5/24/20.
//  Copyright © 2020 Onkar Singh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {

        TabView {
            
            HomeView()
                .tabItem {
                    Tab(imageName: "chart.bar", text: "Home")
            }
            .tag(0)


//            MapContainerView()
//                .edgesIgnoringSafeArea(.vertical)
//                .tabItem {
//                    Tab(imageName: "map", text: "Map")
//            }
//            .tag(1)
        }

    }
    
}


private struct Tab: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        
        VStack {
            Image(systemName: imageName)
            Text(text)
        }
        
    }
}
