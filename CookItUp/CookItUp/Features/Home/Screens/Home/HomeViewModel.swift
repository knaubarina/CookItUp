//  Created by Arina Knaub on 11/06/2024.

import Foundation

@Observable final class HomeViewModel {
    var allRecipes: [Recipe] = []
    var breakfastRecipes: [Recipe] = []
    var lunchRecipes: [Recipe] = []
    var dinnerRecipes: [Recipe] = []
    var dessertRecipes: [Recipe] = []
    let networkingService = NetworkingServiceLive()
    
    func getRecipes() async throws {
        allRecipes = try await getAllRecipes()
        breakfastRecipes = try await getBreakfastRecipes()
        lunchRecipes = try await getLunchRecipes()
        dinnerRecipes = try await getDinnerRecipes()
        dessertRecipes = try await getDessertRecipes()
    }
    
    private func getAllRecipes() async throws -> [Recipe] {
        return try await networkingService.getRecipes()
    }
    
    private func getBreakfastRecipes() async throws -> [Recipe] {
        return try await networkingService.getRecipes(for: .breakfast)
    }
    
    private func getLunchRecipes() async throws -> [Recipe] {
        return try await networkingService.getRecipes(for: .lunch)
    }
    
    private func getDinnerRecipes() async throws -> [Recipe] {
        return try await networkingService.getRecipes(for: .dinner)
    }
    
    private func getDessertRecipes() async throws -> [Recipe] {
        return try await networkingService.getRecipes(for: .dessert)
    }
}
