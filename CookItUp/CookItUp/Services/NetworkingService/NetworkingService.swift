//  Created by Arina Knaub on 11/06/2024.

import Foundation

protocol NetworkingService {
    func getRecipes() async throws -> [Recipe]
    func getRecipes(for recipeType: RecipeType) async throws -> [Recipe]
}
