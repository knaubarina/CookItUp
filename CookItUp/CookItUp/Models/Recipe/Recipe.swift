//  Created by Arina Knaub on 08/06/2024.

import Foundation

struct Recipe: Identifiable {
    let id: String
    let name: String
    let description: String
    let imageURL: String
    let recipeType: RecipeType
    let cookingTime: Int
    let complexity: Complexity
    let servingsNumber: Int
    let ingredients: [Ingredient]
    let energyValue: EnergyValue
    let steps: [RecipeStep]
}
