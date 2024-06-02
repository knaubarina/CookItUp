//  Created by Arina Knaub on 31/05/2024.

import SwiftUI

enum Tab: Int, CaseIterable, Identifiable {
    case firstScreen
    case secondScreen
    case thirdScreen
    
    var id: Self {
        return self
    }
    
    var image: UIImage {
        switch self {
        case .firstScreen:
            return .onboarding1
        case .secondScreen:
            return .onboarding2
        case .thirdScreen:
            return .onboarding3
        }
    }
    
    var title: String {
        switch self {
        case .firstScreen:
            return "Personal Recipe Collection"
        case .secondScreen:
            return "Nutrition Tracking with Energy Value"
        case .thirdScreen:
            return "Step-by-Step Recipe Guide"
        }
    }
    
    var description: String {
        switch self {
        case .firstScreen:
            return "Add your favourite recipes to the profile for easy access."
        case .secondScreen:
            return "Monitor recipe nutrition with detailed tracking of calories, carbs, proteins, and fats."
        case .thirdScreen:
            return "Follow the recipe step-by-step during cooking, utilizing the user-friendly interface."
        }
    }
}
