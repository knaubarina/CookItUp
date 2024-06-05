//  Created by Arina Knaub on 03/06/2024.

import SwiftUI

struct RecipeSegmentedControl: View {
    @State private var recipeSelection: RecipeSelection = .allRecipes
    @State private var tabSelection: RecipeSelection = .allRecipes
    @State private var recipeSelectionViewScrollTarget: RecipeSelection = .allRecipes
    
    var body: some View {
        VStack {
            RecipeSelectionView(
                recipeSelection: $recipeSelection,
                scrollTarget: $recipeSelectionViewScrollTarget
            )
            
            TabView(selection: $tabSelection) {
                Text("First Screen")
                    .tag(RecipeSelection.allRecipes)
                
                Text("Second Screen")
                    .tag(RecipeSelection.breakfast)
                
                Text("Third Screen")
                    .tag(RecipeSelection.lunch)
                
                Text("Fourth Screen")
                    .tag(RecipeSelection.dinner)
                
                Text("Fifth Screen")
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
    }
}

#Preview {
    RecipeSegmentedControl()
}
