//  Created by Arina Knaub on 03/06/2024.

import SwiftUI

enum RecipeSelection: CaseIterable, Identifiable {
    case allRecipes
    case breakfast
    case lunch
    case dinner
    case dessert
    
    var title: String {
        switch self {
        case .allRecipes: return "All Recipes"
        case .breakfast: return "Breakfast"
        case .lunch: return "Lunch"
        case .dinner: return "Dinner"
        case .dessert: return "Dessert"
        }
    }

    var id: Self {
        return self
    }
}

