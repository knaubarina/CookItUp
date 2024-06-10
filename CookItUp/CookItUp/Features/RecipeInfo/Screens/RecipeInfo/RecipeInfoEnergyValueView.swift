//  Created by Arina Knaub on 09/06/2024.

import SwiftUI

struct RecipeInfoEnergyValueView: View {
    var body: some View {
        HStack(spacing: 16) {
            Image(.energyValue)
                .resizable()
                .scaledToFit()
                .frame(width: 34, height: 34)
            VStack(alignment: .leading, spacing: 4) {
                Text("Energy Value Per Serving")
                    .typography(.headline)
                    .foregroundStyle(.neutral05)
                Text("Proteins: 42 g |  Fats: 61 g  |  Carbs: 56 g")
                    .typography(.subheadline2)
                    .foregroundStyle(.neutral03)
            }
        }
    }
}

#Preview {
    RecipeInfoEnergyValueView()
}
