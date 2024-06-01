//  Created by Arina Knaub on 29/05/2024.

import SwiftUI

@main
struct CookItUpApp: App {
    @AppStorage("didFinishOnboarding") var didFinishOnboarding = false
    
    var body: some Scene {
        WindowGroup {
            if didFinishOnboarding {
                ContentView()
            } else {
                OnboardingView()
            }
        }
    }
}
