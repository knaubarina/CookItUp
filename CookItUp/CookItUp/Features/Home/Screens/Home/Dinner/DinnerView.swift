//  Created by Arina Knaub on 06/06/2024.

import SwiftUI

struct DinnerView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 16) {
                ForEach(1...10, id: \.self) { recipe in
                    NavigationLink(value: recipe) {
                        RecipeCardView()
                    }
                    .buttonStyle(.interactable)
                }
            }
            .safeAreaPadding(.top, 16)
            .safeAreaPadding(.bottom, 80)
        }
    }
}

#Preview {
    DinnerView()
}
