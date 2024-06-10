//  Created by Arina Knaub on 01/06/2024.

import SwiftUI

struct RecipeCardView: View {
    var body: some View {
        VStack(spacing: 0) {
            RecipeCardImageView()
            RecipeCardInfoView()
        }
        .frame(minHeight: 259)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .contentShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: .neutral05.opacity(0.12), radius: 8, y: 6)
        .padding(.horizontal)
    }
}

#Preview {
    RecipeCardView()
}
