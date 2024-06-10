//  Created by Arina Knaub on 09/06/2024.

import SwiftUI

struct RecipeInfoIngredientsView: View {
    var body: some View {
        HStack(spacing: 16) {
            Image(.ingredientsList)
                .resizable()
                .scaledToFit()
                .frame(width: 34, height: 34)
            VStack(alignment: .leading, spacing: 4) {
                Text("Ingredients")
                    .typography(.headline)
                    .foregroundStyle(.neutral05)
                Text("All you will need to prepare this dish.")
                    .typography(.subheadline2)
                    .foregroundStyle(.neutral03)
            }
            
            Spacer()
            
            Button {
                // open ingredients sheet
            } label: {
                Image(.downArrow)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
            }
            .buttonStyle(.interactable)
        }
    }
}

#Preview {
    RecipeInfoIngredientsView()
}
