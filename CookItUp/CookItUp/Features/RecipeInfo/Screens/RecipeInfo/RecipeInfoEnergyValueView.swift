//  Created by Arina Knaub on 09/06/2024.

import SwiftUI

struct RecipeInfoEnergyValueView: View {
    let recipe: Recipe
    
    var body: some View {
        HStack(spacing: 16) {
            Image(.energyValue)
                .resizable()
                .scaledToFit()
                .frame(width: 34, height: 34)
            VStack(alignment: .leading, spacing: 4) {
                Text("Energy Value Per Serving")
                    .typography(.headline)
                    .foregroundStyle(.neutral05)
                Text("Proteins: \(recipe.energyValue.proteins) g |  Fats: \(recipe.energyValue.fats) g  |  Carbs: \(recipe.energyValue.carbs) g")
                    .typography(.subheadline2)
                    .foregroundStyle(.neutral03)
            }
        }
    }
}

#Preview {
    RecipeInfoEnergyValueView(recipe: Recipe.mockRecipe)
}
