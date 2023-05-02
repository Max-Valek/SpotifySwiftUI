//
//  HomeView.swift
//  SpotifySwiftUI
//
//  Created by Max Valek on 5/2/23.
//

import SwiftUI

struct RecentItem: Hashable {
    let title: String
    let image: String
}

struct HomeView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    let recentItems: [RecentItem] = [
        RecentItem(title: "Rap", image: "spotify"),
        RecentItem(title: "Country", image: "spotify"),
        RecentItem(title: "Rock", image: "spotify"),
        RecentItem(title: "Pop", image: "spotify"),
        RecentItem(title: "EDM", image: "spotify"),
        RecentItem(title: "Classical", image: "spotify"),
    ]
    
    var body: some View {
        
        ZStack {
            
            Color.theme.background
                .ignoresSafeArea()
            
            ScrollView {
                
                titleAndButtons
                
                topCategoryButtons
                
                recentItemsGrid
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
        HStack {
            Text("Good Morning")
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
    }
}
