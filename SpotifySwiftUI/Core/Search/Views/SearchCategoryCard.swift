//
//  SearchCategoryCard.swift
//  SpotifySwiftUI
//
//  Created by Max Valek on 5/2/23.
//

import SwiftUI

struct SearchCategoryCard: View {
    
    let colors: [Color] = [
        Color.red, Color.theme.lightGreen, Color.theme.darkGreen, Color.blue, Color.purple, Color.pink, Color.orange, Color.gray
    ]
    
    
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Category")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Spacer()
            }
            .padding()
            
            Spacer()
        }
        .frame(maxWidth: UIScreen.main.bounds.width / 2)
        .frame(height: 100)
        .background(colors.randomElement()!, in: RoundedRectangle(cornerRadius: 8))
    }
}

struct SearchCategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        SearchCategoryCard()
            .preferredColorScheme(.dark)
    }
}
