//  Created by Arina Knaub on 02/06/2024.

import SwiftUI

struct RecipeCardImageView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Image(.recipePicture1)
                .resizable()
                .scaledToFill()
                .frame(height: 219)
                .clipped()
            
            LinearGradient(
                colors: [.neutral05.opacity(0), .neutral05.opacity(0.75)],
                startPoint: .top,
                endPoint: .bottom
            )
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Breakfast")
                        .typography(.caption3)
                        .padding(.vertical, 4)
                        .padding(.horizontal, 10)
                        .background(Capsule().foregroundStyle(.neutral01))
                        .foregroundStyle(.neutral05)
                    Spacer()
                    Button {
                        // logic add to fav
                    } label: {
                        Image(.favoritesInactiveCard)
                    }
                }
                
                Spacer()
                
                Text("Cottage Cheese Pancakes With Berries & Sour Cream")
                    .typography(.heading2)
                    .foregroundStyle(.neutral01)
            }
            .padding()
        }
        .frame(height: 219)
    }
}

#Preview {
    RecipeCardImageView()
}
