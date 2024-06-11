//  Created by Arina Knaub on 29/05/2024.

import FirebaseCore
import SwiftUI

@main
struct CookItUpApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @AppStorage("didFinishOnboarding") var didFinishOnboarding = false
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if didFinishOnboarding {
                    TabBarView()
                        .transition(.asymmetric(insertion: .push(from: .bottom), removal: .push(from: .top)))
                } else {
                    OnboardingView()
                }
            }
            .animation(.easeInOut, value: didFinishOnboarding)
        }
    }
}
