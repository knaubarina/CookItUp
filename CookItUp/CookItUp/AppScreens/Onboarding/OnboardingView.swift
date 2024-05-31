//  Created by Arina Knaub on 31/05/2024.

import SwiftUI

struct OnboardingStep {
    var image: String
    var title: String
    var description: String
}

private let onboardingSteps = [
    OnboardingStep(image: "onboarding-1",
                   title: "Personal Recipe Collection",
                   description: "Add your favourite recipes to the profile\n for easy access."),
    OnboardingStep(image: "onboarding-2",
                   title: "Modify servings to adjust ingredient amounts",
                   description: "Set the required number of servings and the ingredients will change automatically."),
    OnboardingStep(image: "onboarding-3",
                   title: "Step-by-Step Recipe Guide",
                   description: "Follow the recipe step-by-step during cooking,\n utilizing the user-friendly interface.")
]

struct OnboardingView: View {
    
    @State private var currentStep = 0
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        ZStack {
            TabView(selection: $currentStep) {
                ForEach(0..<onboardingSteps.count, id: \.self) { step in
                    ZStack {
                        Image(onboardingSteps[step].image)
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea()
                        
                        VStack {
                            // skip button
                            HStack {
                                Spacer()
                                Button {
                                    self.currentStep = onboardingSteps.count - 1
                                } label: {
                                    Text(currentStep < onboardingSteps.count - 1 ? "Skip" : "")
                                        .typography(.body2)
                                        .foregroundStyle(.neutral05)
                                        .frame(width: 42, height: 42, alignment: .trailing)
                                }
                                .padding(.horizontal, 16)
                                .padding(.vertical, 61)
                            }
                            
                            Spacer()
                            
                            // title + description
                            VStack(spacing: 24) {
                                Text(onboardingSteps[step].title)
                                    .typography(.title)
                                
                                Text(onboardingSteps[step].description)
                                    .typography(.headline)
                                    .padding(.horizontal, 16)
                            }
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.neutral01)
                            .padding()
                            
                            VStack(spacing: 27) {
                                // page control
                                HStack(spacing: 4) {
                                    ForEach(0..<onboardingSteps.count, id: \.self) { step in
                                        if step == currentStep {
                                            Rectangle()
                                                .frame(width: 45, height: 6)
                                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                                .foregroundStyle(.primary02)
                                        } else {
                                            Rectangle()
                                                .frame(width: 16, height: 6)
                                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                                .foregroundStyle(.neutral02)
                                        }
                                    }
                                }
                                
                                // primary button
                                VStack {
                                    Button {
                                        if self.currentStep < onboardingSteps.count - 1 {
                                            self.currentStep += 1
                                        } else {
                                            // get started logic
                                        }
                                    } label: {
                                        Text(currentStep < onboardingSteps.count - 1 ? "Continue" : "Let's Start!")
                                    }
                                    .buttonStyle(.primary)
                                }
                                .padding(.bottom, 70)
                            }
                        }
                    }
                    .tag(step)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingView()
}
