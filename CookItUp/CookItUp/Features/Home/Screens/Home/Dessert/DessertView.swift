//  Created by Arina Knaub on 05/06/2024.

import SwiftUI

struct DessertView: View {
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
    DessertView(recipes: [Recipe.mockRecipe])
}
