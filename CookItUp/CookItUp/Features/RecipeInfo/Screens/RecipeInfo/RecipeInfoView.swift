//  Created by Arina Knaub on 04/06/2024.

import SwiftUI

struct RecipeInfoView: View {
    let recipe: Recipe
    enum CoordinateSpaces {
        case scrollView
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(showsIndicators: false) {
                ParallaxHeader(
                    coordinateSpace: CoordinateSpaces.scrollView,
                    defaultHeight: 300
                ) {
                    Image(.step2)
                        .resizable()
                        .scaledToFill()
                        .overlay(
                            Rectangle()
                                .opacity(0.15)
                        )
                }
                
                VStack(alignment: .leading, spacing: 24) {
                    RecipeInfoTitleView(recipe: recipe)
                    RecipeCardInfoView(recipe: recipe)
                        .frame(height: 40)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .shadow(color: .neutral05.opacity(0.04), radius: 4, y: 4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(.neutral02, lineWidth: 1)
                        )
                    RecipeInfoIngredientsView()
                    Divider()
                    RecipeInfoEnergyValueView(recipe: recipe)
                    
                    Button("Edit Recipe") {
                        // edit recipe logic
                    }
                    .buttonStyle(.secondary)
                    .padding(.bottom, 24)
                }
                .padding(.top, 4)
                .padding(.horizontal)
            }
            .coordinateSpace(.named(CoordinateSpaces.scrollView))
            
            ZStack(alignment: .top) {
                Rectangle()
                    .frame(height: 90)
                    .foregroundStyle(.neutral01)
                    .overlay(Divider().background(.neutral02), alignment: .top)
                
                Button("Let's Cook!") {
                    // let's cook logic
                }
                .buttonStyle(.primary)
                .padding(.top, 12)
            }
        }
        .ignoresSafeArea()
        .toolbar(.hidden, for: .tabBar)
        .toolbarBackground(.hidden, for: .navigationBar)
        .toolbar {
            ToolbarItemGroup(placement: .topBarTrailing) {
                HStack(spacing: 16) {
                    ShareButton()
                    FavouriteButton()
                }
            }
        }
    }
}

#Preview {
    RecipeInfoView(recipe: Recipe.mockRecipe)
}
