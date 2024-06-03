//  Created by Arina Knaub on 03/06/2024.

import SwiftUI

enum RecipeSegmentedControlFilter: Int, CaseIterable, Identifiable {
    case allRecipes
    case breakfast
    case lunch
    case dinner
    
    var title: String {
        switch self {
        case .allRecipes: return "All Recipes"
        case .breakfast: return "Breakfast"
        case .lunch: return "Lunch"
        case .dinner: return "Dinner"
        }
    }
    var id: Int { return self.rawValue }
}

