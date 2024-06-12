//  Created by Arina Knaub on 02/06/2024.

import SwiftUI

struct RecipeCardInfoView: View {
    let recipe: Recipe
    
    var body: some View {
        HStack(spacing: 12) {
            HStack(spacing: 8) {
                Image(.timer)
                    .resizable()
                    .frame(width: 16, height: 16)
                Text("\(recipe.cookingTime) min")
                    .typography(.caption3)
            }
            
            Divider()
                .frame(width: 1, height: 24)
            
            HStack(spacing: 8) {
                Image(.complexity)
                    .resizable()
                    .frame(width: 16, height: 16)
                Text(recipe.complexity.rawValue)
                    .typography(.caption3)
            }
            
            Divider()
                .frame(width: 1, height: 24)
            
            HStack(spacing: 8) {
                Image(.servings)
                    .resizable()
                    .frame(width: 16, height: 16)
                Text("\(recipe.servingsNumber) sv")
                    .typography(.caption3)
            }
            
            Divider()
                .frame(width: 1, height: 24)
            
            HStack(spacing: 8) {
                Image(.calories)
                    .resizable()
                    .frame(width: 16, height: 16)
                Text("\(recipe.energyValue.calories) Cal")
                    .typography(.caption3)
            }
        }
        .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 40)
        .background(.white)
    }
}

#Preview {
    RecipeCardInfoView(recipe: Recipe.mockRecipe)
}
