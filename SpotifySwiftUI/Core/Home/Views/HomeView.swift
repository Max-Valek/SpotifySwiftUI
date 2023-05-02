//
//  HomeView.swift
//  SpotifySwiftUI
//
//  Created by Max Valek on 5/2/23.
//

import SwiftUI

struct Item: Hashable {
    let title: String
    let image: String
}

struct HomeView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    let recentItems: [Item] = [
        Item(title: "Rap", image: "spotify"),
        Item(title: "Country", image: "spotify"),
        Item(title: "Rock", image: "spotify"),
        Item(title: "Pop", image: "spotify"),
        Item(title: "EDM", image: "spotify"),
        Item(title: "Classical", image: "spotify"),
    ]
    
    var body: some View {
        
        ZStack {
            
            Color.theme.background
                .ignoresSafeArea()
            
            ScrollView {
                
                titleAndButtons
                
                topCategoryButtons
                
                recentItemsGrid
                
                HomeCategoryView(title: "Recently Played", items: recentItems)
                
                HomeCategoryView(title: "Your Playlists", items: recentItems)
                
                HomeCategoryView(title: "Your top mixes", items: recentItems)
                
                HomeCategoryView(title: "Made For user", items: recentItems)
                
                HomeCategoryView(title: "Uniquely yours", items: recentItems)
            }
            .padding(.horizontal)
        }
        .foregroundColor(Color.theme.text)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension HomeView {
    
    private var titleAndButtons: some View {
        HStack(spacing: 24) {
            Text("Good Morning")
                .fontWeight(.bold)
            Spacer()
            Image(systemName: "bell")
            Image(systemName: "clock")
            Image(systemName: "gearshape")
        }
        .font(.title2)
    }
    
    private var topCategoryButtons: some View {
        HStack {
            Text("Music")
                .padding(.vertical, 8)
                .padding(.horizontal)
                .background(Color.theme.text.opacity(0.1), in: Capsule())
            
            Text("Podcasts & Shows")
                .padding(.vertical, 8)
                .padding(.horizontal)
                .background(Color.theme.text.opacity(0.1), in: Capsule())
            
            Text("Audiobooks")
                .padding(.vertical, 8)
                .padding(.horizontal)
                .background(Color.theme.text.opacity(0.1), in: Capsule())
            
            Spacer()
        }
        .font(.caption)
        .fontWeight(.semibold)
        .padding(.top)
    }
    
    private var recentItemsGrid: some View {
        LazyVGrid(columns: columns, spacing: 7) {
            ForEach(recentItems, id: \.self) { item in
                RecentItemView(item: item)
            }
        }
        .padding(.vertical, 8)
        .padding(.bottom)
    }
}
