//  Created by Arina Knaub on 02/06/2024.

import SwiftUI

struct HomeView: View {
    @State private var recipeSelection: RecipeSelection = .allRecipes
    @State private var tabSelection: RecipeSelection = .allRecipes
    @State private var recipeSelectionViewScrollTarget: RecipeSelection = .allRecipes
    @State private var homeViewModel = HomeViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                RecipeSelectionView(
                    recipeSelection: $recipeSelection,
                    scrollTarget: $recipeSelectionViewScrollTarget
                )
                
                TabView(selection: $tabSelection) {
                    AllRecipesView(recipes: homeViewModel.allRecipes)
                        .tag(RecipeSelection.allRecipes)
                    
                    BreakfastView(recipes: homeViewModel.breakfastRecipes)
                        .tag(RecipeSelection.breakfast)
                    
                    LunchView(recipes: homeViewModel.lunchRecipes)
                        .tag(RecipeSelection.lunch)
                    
                    DinnerView(recipes: homeViewModel.dinnerRecipes)
                        .tag(RecipeSelection.dinner)
                    
                    DessertView(recipes: homeViewModel.dessertRecipes)
                        .tag(RecipeSelection.dessert)
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .onChange(of: tabSelection) { _, newValue in
                    withAnimation(.spring) {
                        recipeSelection = newValue
                        recipeSelectionViewScrollTarget = newValue
                    }
                }
                .onChange(of: recipeSelection) { _, newValue in
                    withAnimation {
                        tabSelection = newValue
                    }
                }
            }
            .padding(.top, 4)

            Button {
                // add recipe logic
            } label: {
                Text("Add +")
            }
            .buttonStyle(.tertiary)
            .padding(.bottom, 16)
        }
        .onAppear {
            Task {
                do {
                    try await homeViewModel.getRecipes()
                } catch {
                    // Handle error
                }
            }
        }
    }
}


#Preview {
    HomeView()
}
