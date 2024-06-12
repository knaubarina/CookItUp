//  Created by Arina Knaub on 06/06/2024.

import SwiftUI

struct DinnerView: View {
    let recipes: [Recipe]
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 16) {
                ForEach(recipes) { recipe in
                    NavigationLink(value: recipe) {
                        RecipeCardView(recipe: recipe)
                    }
                    .buttonStyle(.interactable)
                }
            }
            .safeAreaPadding(.top, 16)
            .safeAreaPadding(.bottom, 80)
        }
    }
}

#Preview {
    DinnerView(recipes: [Recipe.mockRecipe])
}
