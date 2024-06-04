//  Created by Arina Knaub on 03/06/2024.

import SwiftUI

struct RecipeSegmentedControl: View {
    
    @State private var selectedFilter: RecipeSegmentedControlFilter = .allRecipes
    @Namespace var animation
    
    var body: some View {
        HStack {
            ForEach(RecipeSegmentedControlFilter.allCases) { filter in
                VStack {
                    Text(filter.title)
                        .typography(.subheadline2)
                        .foregroundStyle(selectedFilter == filter ? .neutral05 : .neutral03)
                    
                    if selectedFilter == filter {
                        Rectangle()
                            .foregroundStyle(.neutral05)
                            .frame(height: 1)
                            .matchedGeometryEffect(id: "item", in: animation)
                    } else {
                        Rectangle()
                            .foregroundStyle(.clear)
                            .frame(height: 1)
                    }
                }
                .onTapGesture {
                    withAnimation(.spring) {
                        selectedFilter = filter
                    }
                }
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    RecipeSegmentedControl()
}

