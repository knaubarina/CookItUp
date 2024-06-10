//  Created by Arina Knaub on 04/06/2024.

import SwiftUI

struct RecipeInfoView: View {
    private let images = ["recipePicture-1", "recipePicture-2", "step-1", "step-2", "step-3", "step-4", "step-5", "step-6"]
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(showsIndicators: false) {
                TabView {
                    ForEach(images, id: \.self) { image in
                        Image(image)
                            .resizable()
                            .scaledToFill()
                            .overlay(
                                Rectangle()
                                    .opacity(0.15)
                            )
                    }
                }
                .frame(height: 300)
                .tabViewStyle(.page)
                
                VStack(alignment: .leading, spacing: 24) {
                    RecipeInfoTitleView()
                    RecipeCardInfoView()
                        .frame(height: 40)
                        .shadow(color: .neutral05.opacity(0.04), radius: 4, y: 4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(.neutral02, lineWidth: 1)
                        )
                    RecipeInfoIngredientsView()
                    Divider()
                    RecipeInfoEnergyValueView()
                    
                    Button("Edit Recipe") {
                        // edit recipe logic
                    }
                    .buttonStyle(.secondary)
                    .padding(.bottom, 24)
                }
                .padding(.top, 4)
                .padding(.horizontal)
            }
            
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
    RecipeInfoView()
}
