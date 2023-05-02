//
//  MainView.swift
//  SpotifySwiftUI
//
//  Created by Max Valek on 5/2/23.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        TabView {
            
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .toolbarBackground(Color.theme.background.opacity(0.7), for: .tabBar)
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .toolbarBackground(Color.theme.background.opacity(0.7), for: .tabBar)
            
            LibraryView()
                .tabItem {
                    Label("Library", systemImage: "square.stack.3d.down.forward")
                }
                .toolbarBackground(Color.theme.background.opacity(0.7), for: .tabBar)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
