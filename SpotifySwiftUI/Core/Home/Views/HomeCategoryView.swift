//
//  HomeCategoryView.swift
//  SpotifySwiftUI
//
//  Created by Max Valek on 5/2/23.
//

import SwiftUI

struct HomeCategoryView: View {
    
    let title: String
    
    let items: [Item]
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            Text(title)
                .font(.title3)
                .fontWeight(.bold)
            
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(items, id: \.self) { item in
                        HomeCategoryItemView(item: item)
                    }
                }
            }
        }
        .padding(.vertical)
    }
}

struct HomeCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCategoryView(title: "Category",
                         items: [
                            Item(title: "Sample Item", image: "spotify"),
                            Item(title: "Sample Item", image: "spotify"),
                            Item(title: "Sample Item", image: "spotify"),
                            Item(title: "Sample Item", image: "spotify"),
                            Item(title: "Sample Item", image: "spotify"),
                         ])
            .preferredColorScheme(.dark)
    }
}
