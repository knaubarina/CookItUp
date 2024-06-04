//  Created by Arina Knaub on 04/06/2024.

import SwiftUI

struct RecipeInfoView: View {
    
    var images = [
        "recipePicture-1",
        "recipePicture-2",
        "step-1",
        "step-2",
        "step-3",
        "step-4",
        "step-5",
        "step-6",
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                ZStack {
                    TabView {
                        ForEach(images, id: \.self) { image in
                            Image(image)
                                .resizable()
                                .scaledToFill()
                        }
                    }
                    VStack {
                        HStack(spacing: 16) {
                            Button {
                                // back logic
                            } label: {
                                Image(.back)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 30, height: 30)
                            }
                            
                            Spacer()
                            
                            Button {
                                // share recipe logic
                            } label: {
                                Image(.share)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 30, height: 30)
                            }
                            
                            Button {
                                // add to fav logic
                            } label: {
                                Image(.addToFavorites)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 30, height: 30)
                            }
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.top, 60)
                }
                .frame(height: 300)
                .tabViewStyle(.page)
                
                VStack(alignment: .leading, spacing: 24) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Cottage Cheese Pancakes With Berries & Sour Cream")
                            .typography(.title)
                            .foregroundStyle(.neutral05)
                        
                        Text("The main secret of perfect cottage cheese pancakes is to strain the quark, ensuring a smoother texture and removing excess moisture. This process enhances the fluffiness of the pancakes and prevents them from becoming too dense.")
                            .typography(.body2)
                            .foregroundStyle(.neutral05)
                    }
                    
                    RecipeCardInfoView()
                        .frame(height: 40)
                        .shadow(color: .neutral05.opacity(0.04), radius: 4, y: 4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(.neutral02, lineWidth: 1)
                        )
                    
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
                    }
                    Divider()
                    
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
                    
                    Button {
                        // edit recipe logic
                    } label: {
                        Text("Edit Recipe")
                    }
                    .buttonStyle(.secondary)
                    .padding(.bottom, 24)
                }
                .padding(.top, 4)
                .padding(.horizontal)
            }
            .ignoresSafeArea()
        }
        Button {
            
        } label: {
            Text("Let's Cook!")
        }
        .buttonStyle(.primary)
    }
}

#Preview {
    RecipeInfoView()
}
