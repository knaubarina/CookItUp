//  Created by Arina Knaub on 09/06/2024.

import SwiftUI

struct RecipeInfoTitleView: View {
    let recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(recipe.name)
                .typography(.title)
            
            Text(recipe.description)
                .typography(.body2)
        }
        .foregroundStyle(.neutral05)
    }
}

#Preview {
    RecipeInfoTitleView(recipe: Recipe.mockRecipe)
}
