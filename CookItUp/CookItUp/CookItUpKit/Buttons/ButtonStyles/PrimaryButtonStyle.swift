//  Created by Arina Knaub on 30/05/2024.

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .typography(.buttons)
            .foregroundStyle(.neutral01)
            .frame(maxWidth: 175, maxHeight: 42)
            .background(configuration.isPressed ? .primary01 : .primary02)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
    }
}

extension ButtonStyle where Self == PrimaryButtonStyle {
    
    static var primary: PrimaryButtonStyle {
        PrimaryButtonStyle()
    }
}


#Preview {
    Button("Continue") {}
    .buttonStyle(.primary)
}
