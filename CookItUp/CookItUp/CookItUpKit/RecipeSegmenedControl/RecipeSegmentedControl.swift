//  Created by Arina Knaub on 03/06/2024.

import SwiftUI

struct RecipeSegmentedControl: View {
    
    @State private var selectedFilter: RecipeSegmentedControlFilter = .allRecipes
    @Namespace var animation
    
    var body: some View {
        HStack(spacing: 12) {
            ForEach(RecipeSegmentedControlFilter.allCases) { filter in
                VStack(spacing: 16) {
                    Text(filter.title)
                        .typography(.subheadline1)
                        .foregroundStyle(selectedFilter == filter ? .neutral05 : .neutral03)
                    
                    if selectedFilter == filter {
                        Capsule()
                            .foregroundStyle(.neutral05)
                            .frame(height: 2)
                            .matchedGeometryEffect(id: "item", in: animation)
                    } else {
                        Capsule()
                            .foregroundStyle(.clear)
                            .frame(height: 2)
                    }
                }
                .onTapGesture {
                    withAnimation(.spring) {
                        selectedFilter = filter
                    }
                }
            }
        }
        .padding(.horizontal)
        .padding(.top)
    }
}

#Preview {
    RecipeSegmentedControl()
}

