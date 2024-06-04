//  Created by Arina Knaub on 02/06/2024.

import SwiftUI

struct HomeView: View {
    
    
    var body: some View {
        NavigationStack {
                RecipeSegmentedControl()
            ZStack(alignment: .bottom) {
                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(1...5, id: \.self) { listing in
                            RecipeCardView()
                        }
                    }
                    .padding(.top, 12)
                    .padding(.bottom, 28)
                }
                
                Button {
                    // add recipe logic
                } label: {
                    Text("Add +")
                }
                .buttonStyle(.tertiary)
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
