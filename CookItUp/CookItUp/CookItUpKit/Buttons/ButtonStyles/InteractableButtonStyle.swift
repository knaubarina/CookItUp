//  Created by Arina Knaub on 08/06/2024.

import SwiftUI

struct InteractableButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        return configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .animation(.easeInOut(duration: 0.23), value: configuration.isPressed)
            .sensoryFeedback(.impact(flexibility: .soft, intensity: 0.5), trigger: configuration.isPressed)
    }
}

extension ButtonStyle where Self == InteractableButtonStyle {
    static var interactable: InteractableButtonStyle {
        InteractableButtonStyle()
    }
}

#Preview {
    Button("Add +") {}
        .buttonStyle(.interactable)
}
