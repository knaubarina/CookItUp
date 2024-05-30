//  Created by Arina Knaub on 30/05/2024.

import SwiftUI

struct TypographyModifier: ViewModifier {
    
    let typography: Typography
    
    func body(content: Content) -> some View {
        content
            .font(typography.textStyle.font)
            .lineSpacing(typography.textStyle.lineSpacing)
    }
}

