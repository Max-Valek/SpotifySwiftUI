//
//  HomeItemView.swift
//  SpotifySwiftUI
//
//  Created by Max Valek on 5/2/23.
//

import SwiftUI

struct HomeCategoryItemView: View {
    
    let item: Item
    
    var body: some View {
        
        VStack {
            Image(item.image)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            Text(item.title)
                .font(.subheadline)
        }
        .frame(width: 100, height: 150)
    }
}

struct HomeCategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCategoryItemView(item: Item(title: "Classic Rock", image: "spotify"))
            .preferredColorScheme(.dark)
    }
}
