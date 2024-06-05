//  Created by Arina Knaub on 05/06/2024.

import SwiftUI

struct DinnerView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(1...10, id: \.self) { recipe in
                    VStack(spacing: 0) {
                        RecipeCardImageView()
                        RecipeCardInfoView()
                    }
                }
                .frame(height: 259)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .shadow(color: .neutral05.opacity(0.12), radius: 16, y: 6)
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    DinnerView()
}
