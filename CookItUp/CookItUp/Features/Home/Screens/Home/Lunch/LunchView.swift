//  Created by Arina Knaub on 05/06/2024.

import SwiftUI

struct LunchView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(1...10, id: \.self) { recipe in
                    RecipeCardView()
                }
            }
        }
        .safeAreaPadding(.top, 16)
        .safeAreaPadding(.bottom, 80)
    }
}

#Preview {
    LunchView()
}
