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
            ScrollView(showsIndicators: false) {
                ZStack {
                    TabView {
                        ForEach(images, id: \.self) { image in
                            Image(image)
                                .resizable()
                                .scaledToFill()
                        }
                    }
                    NavigationBarIcons()
                }
                .frame(height: 300)
                .tabViewStyle(.page)
                
                VStack(alignment: .leading, spacing: 24) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Cottage Cheese Pancakes With Berries & Sour Cream")
                            .typography(.title)
                        
                        ExpandableText()
                    }
                    .foregroundStyle(.neutral05)

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
        Button {
            // let's cook logic
        } label: {
            Text("Let's Cook!")
        }
        .buttonStyle(.primary)
    }
}

#Preview {
    RecipeInfoView()
}

struct ExpandableText:  View {
    
    @State private var isExpanded: Bool = false
    
    var body: some View {
        VStack {
            Text("The main secret of perfect cottage cheese pancakes is to strain the quark, ensuring a smoother texture and removing excess moisture. This process enhances the fluffiness of the pancakes and prevents them from becoming too dense.")
                .lineLimit(isExpanded ? nil : 3)
                .overlay(
                    GeometryReader { proxy in
                        Button(action: {
                                isExpanded.toggle()
                        }) {
                            Text(isExpanded ? "" : "... Show more")
                                .typography(.body2)
                                .foregroundStyle(.primary03)
                                .underline()
                                .padding(.leading, 8)
                                .padding(.top, 4)
                                .background(.white)
                        }
                        .frame(width: proxy.size.width, height: proxy.size.height, alignment: .bottomTrailing)
                    }
                )
        }
    }
}
