//  Created by Arina Knaub on 31/05/2024.

import SwiftUI

struct OnboardingView: View {
    
    @State private var currentSelection: Tab = .firstScreen
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView(.init()) {
                    TabView(selection: $currentSelection) {
                        ForEach(Tab.allCases) { tab in
                            Image(uiImage: tab.image)
                                .resizable()
                                .scaledToFill()
                                .tag(tab)
                                .overlay {
                                    Color(.neutral05)
                                        .opacity(0.2)
                                }
                        }
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .animation(.default, value: currentSelection)
                
                
                VStack(spacing: 24) {
                    Spacer()
                    Text(currentSelection.title)
                        .typography(.title)
                        .allowsHitTesting(false)
                    Text(currentSelection.description)
                        .typography(.headline)
                        .allowsHitTesting(false)
                    
                    PageControl(currentPage: $currentSelection,
                                numberOfPages: Tab.allCases.count)
                    
                    Button {
                        if currentSelection != .thirdScreen {
                            currentSelection = Tab(rawValue: currentSelection.rawValue + 1)!
                        } else {
                            // get started logic
                        }
                    } label: {
                        Text(currentSelection != .thirdScreen ? "Continue" : "Let's Start!")
                    }
                    .buttonStyle(.primary)
                    .padding()
                }
                .multilineTextAlignment(.center)
                .foregroundStyle(.neutral01)
                .padding()
            }
            .ignoresSafeArea()
            .toolbar {
                if currentSelection.rawValue != Tab.allCases.count - 1 {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Skip") {
                            currentSelection = .thirdScreen
                        }
                        .frame(width: 42, height: 42)
                        .foregroundStyle(.neutral05)
                    }
                }
            }
        }
    }
}

#Preview {
    OnboardingView()
}
