//  Created by Arina Knaub on 05/06/2024.

import SwiftUI

struct RecipeSelectionView: View {
    
    @Binding var recipeSelection: RecipeSelection
    @Binding var scrollTarget: RecipeSelection
    @Namespace var animation
    
    var body: some View {
        ScrollViewReader { scrollViewProxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .bottom, spacing: 28) {
                    ForEach(RecipeSelection.allCases) { recipe in
                        VStack(spacing: 12) {
                            Text(recipe.title)
                                .typography(.subheadline1)
                                .foregroundStyle(recipeSelection == recipe ? .neutral05 : .neutral03)
                            
                            ZStack {
                                if recipeSelection == recipe {
                                    RoundedRectangle(cornerRadius: 2, style: .continuous)
                                        .fill(.neutral05)
                                        .matchedGeometryEffect(id: "recipeAnimation", in: animation)
                                        .padding(.horizontal, -6)
                                } else {
                                    RoundedRectangle(cornerRadius: 2, style: .continuous)
                                        .fill(.clear)
                                }
                            }
                            .frame(height: 2)
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            withAnimation(.spring) {
                                recipeSelection = recipe
                                scrollViewProxy.scrollTo(recipe, anchor: .center)
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
            .onChange(of: scrollTarget) { oldValue, newValue in
                withAnimation(.spring) {
                    scrollViewProxy.scrollTo(scrollTarget, anchor: .center)
                }
            }
        }
    }
}

#Preview {
    RecipeSelectionView(
        recipeSelection: .constant(.allRecipes),
        scrollTarget: .constant(.allRecipes)
    )
}
