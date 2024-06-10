//  Created by Arina Knaub on 03/06/2024.

import SwiftUI

struct TertiaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .typography(.buttons)
            .foregroundStyle(.neutral01)
            .frame(maxWidth: 100, maxHeight: 48)
            .background(configuration.isPressed ? .primary01 : .primary02)
            .clipShape(RoundedRectangle(cornerRadius: 28))
            .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
            .sensoryFeedback(.impact(flexibility: .soft, intensity: 0.5), trigger: configuration.isPressed)
    }
}

extension ButtonStyle where Self == PrimaryButtonStyle {
    
    static var tertiary: TertiaryButtonStyle {
        TertiaryButtonStyle()
    }
}

#Preview {
    Button("Add +") {}
    .buttonStyle(.tertiary)
}
