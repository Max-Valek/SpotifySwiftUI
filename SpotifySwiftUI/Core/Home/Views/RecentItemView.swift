//
//  RecentItemView.swift
//  SpotifySwiftUI
//
//  Created by Max Valek on 5/2/23.
//

import SwiftUI

struct RecentItemView: View {
    
    let item: RecentItem
    
    var body: some View {
        
        HStack {
            
            Image(item.image)
                .resizable()
                .frame(width: 50, height: 50)
            
            HStack {
                Text(item.title)
                    .padding(.leading, 4)
                
                Spacer()
            }
        }
        .font(.subheadline)
        .frame(maxWidth: UIScreen.main.bounds.width / 2)
        .frame(height: 50)
        .background(Color.theme.text.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        
    }
}

struct RecentItemView_Previews: PreviewProvider {
    static var previews: some View {
        RecentItemView(item: RecentItem(title: "Country", image: "spotify"))
            .preferredColorScheme(.dark)
    }
}
