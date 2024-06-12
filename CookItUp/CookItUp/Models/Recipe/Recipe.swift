//  Created by Arina Knaub on 08/06/2024.

import Foundation

struct Recipe: Identifiable, Codable, Hashable {
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

extension Recipe {
    static let mockRecipe = Recipe(
        id: "1",
        name: "Classic New York Cheesecake",
        description: "Cheesecake is a classic American dessert enjoyed worldwide. Follow this New York Cheesecake recipe for a creamy, rich treat. Perfect for any special occasion! Suitable for a 26-28 cm pan.",
        imageURL: "https://google.com",
        recipeType: .dessert,
        cookingTime: 90,
        complexity: .easy,
        servingsNumber: 10,
        ingredients: [
            Ingredient(name: "Sand biscuit", value: 500, unit: "g"),
            Ingredient(name: "Butter", value: 166, unit: "g")
        ],
        energyValue: EnergyValue(calories: 290, proteins: 23, fats: 34, carbs: 11),
        steps: [
            RecipeStep(
                imageURL: "https://google.com",
                description: "Prepare all necessary ingredients for making New York cheesecake. Take out eggs, cheese, cream, and butter from the refrigerator in advance, about half an hour before cooking, and let them come to room temperature."
            ),
            RecipeStep(
                imageURL: "https://google.com",
                description: "After 30 minutes, start with the crust layer. Choose any type of sand biscuit you prefer—light, dark, with nuts—whatever suits your taste. Prepare the base by grinding the biscuits into crumbs. The easiest methods are using a blender or a food processor"
            )
        ]
    )
}
