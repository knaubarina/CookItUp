//  Created by Arina Knaub on 04/06/2024.

import SwiftUI

struct SecondaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .typography(.buttons)
            .foregroundStyle(configuration.isPressed ? .primary03.opacity(0.5) : .primary03)
            .frame(maxWidth: .infinity)
            .frame(height: 48)
            .background(.white)
            .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(configuration.isPressed ? .primary03.opacity(0.5) : .primary03)
            )
            .sensoryFeedback(.impact(flexibility: .soft, intensity: 0.5), trigger: configuration.isPressed)
    }
}

extension ButtonStyle where Self == SecondaryButtonStyle {
    
    static var secondary: SecondaryButtonStyle {
        SecondaryButtonStyle()
    }
}


#Preview {
    Button("Continue") {}
    .buttonStyle(.secondary)
    .padding()
}
