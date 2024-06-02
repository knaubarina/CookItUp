//  Created by Arina Knaub on 29/05/2024.

import SwiftUI

@main
struct CookItUpApp: App {
    @AppStorage("didFinishOnboarding") var didFinishOnboarding = false
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if didFinishOnboarding {
                    ContentView()
                        .transition(.asymmetric(insertion: .push(from: .bottom), removal: .push(from: .top)))
                } else {
                    OnboardingView()
                }
            }
            .animation(.easeInOut, value: didFinishOnboarding)
        }
    }
}
