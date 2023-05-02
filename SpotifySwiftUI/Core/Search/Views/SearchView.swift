//
//  SearchView.swift
//  SpotifySwiftUI
//
//  Created by Max Valek on 5/2/23.
//

import SwiftUI

struct SearchView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        ZStack {
            
            Color.theme.background
                .ignoresSafeArea()
            
            ScrollView {
                
                titleAndCameraIcon
                
                searchBar
                
                HStack {
                    Text("Browse All")
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                .padding(.vertical)
                LazyVGrid(columns: columns) {
                    ForEach(0..<25) { _ in
                        SearchCategoryCard()
                    }
                }
                
            }
            .padding()
        }
        .foregroundColor(Color.theme.text)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

extension SearchView {
    
    private var titleAndCameraIcon: some View {
        HStack {
            Text("Search")
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: "arrow.triangle.2.circlepath.camera")
        }
        .font(.title2)
        .padding(.vertical, 4)
    }
    
    private var searchBar: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .padding(.leading)
            
            Text("What do you want to listen to?")
            
            Spacer()
        }
        .font(.subheadline)
        .foregroundColor(Color.theme.background)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(Color.theme.text, in: RoundedRectangle(cornerRadius: 4))
    }
}
