//
//  LibraryView.swift
//  SpotifySwiftUI
//
//  Created by Max Valek on 5/2/23.
//

import SwiftUI

struct LibraryView: View {
    
    let topButtonTitles: [String] = [
        "Playlists", "Podcasts & Shows", "Albums", "Artists", "Downloaded"
    ]
    
    var body: some View {
        
        ZStack {
            
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                
                titleAndButtons
                
                topCategoryButtons
                
                ScrollView {
                    
                    listLabels
                    
                    ForEach(0..<10, id: \.self) { _ in
                        HStack(spacing: 16) {
                            Image("spotify")
                                .resizable()
                                .frame(width: 55, height: 55)
                                .cornerRadius(4)
                            
                            VStack(alignment: .leading) {
                                Text("Playlist Title")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                
                                Text("Category • Creator")
                                    .font(.footnote)
                                    .foregroundColor(Color.theme.text.opacity(0.7))
                            }
                            
                            Spacer()
                        }
                    }
                    
                }
            }
            .padding()
            
        }
        .foregroundColor(Color.theme.text)
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

extension LibraryView {
    
    private var titleAndButtons: some View {
        HStack {
            Text("M")
                .font(.title3)
                .foregroundColor(Color.theme.background)
                .padding(7)
                .background(Color.blue, in: Circle())
            
            Text("Your Library")
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: "magnifyingglass")
                .padding(.trailing)
            
            Image(systemName: "plus")
        }
        .font(.title2)
    }
    
    private var topCategoryButtons: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(topButtonTitles, id: \.self) { title in
                    Text(title)
                        .padding(.vertical, 8)
                        .padding(.horizontal)
                        .background(Color.theme.text.opacity(0.1), in: Capsule())
                }
            }
            .font(.caption)
            .fontWeight(.semibold)
        }
    }
    
    private var listLabels: some View {
        HStack {
            Image(systemName: "arrow.up.arrow.down")
            Text("Recents")
            
            Spacer()
            
            Image(systemName: "square.grid.2x2")
        }
        .font(.footnote)
        .fontWeight(.semibold)
        .padding(.top)
    }
}
