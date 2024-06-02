//  Created by Arina Knaub on 01/06/2024.

import SwiftUI

struct RecipeCardView: View {
    var body: some View {
        GeometryReader { geometry in
            let fixedWidth = geometry.size.width * 1
            let fixedHeight = fixedWidth * 3 / 4
            
            VStack {
                ZStack {
                    Image(uiImage: .recipePicture1)
                        .resizable()
                        .scaledToFill()
                        .frame(width: fixedWidth, height: fixedHeight)
                        .clipped()
                    
                    VStack {
                        HStack {
                            Text("Popular")
                                .typography(.caption3)
                                .frame(width: 67, height: 28)
                                .background(Color.neutral01)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                            
                            Spacer()
                            
                            Button {
                                // logic add to fav
                            } label: {
                                Image(uiImage: .favoritesInactiveCard)
                            }
                        }
                        .padding([.leading, .trailing], 16)
                        .padding(.top, 16)
                        
                        Spacer()
                        
                        Text("Cottage Cheese Pancakes With Berries & Sour Cream")
                            .typography(.heading2)
                            .foregroundColor(.neutral01)
                            .padding([.leading, .trailing], 16)
                            .padding(.bottom, 16)
                    }
                    .frame(width: fixedWidth, height: fixedHeight, alignment: .top)
                }
                
                HStack(spacing: 12) {
                    HStack(spacing: 8) {
                        Image(uiImage: .timer)
                        Text("30 min")
                    }
                    
                    Divider()
                        .frame(height: 24)
                    
                    HStack(spacing: 8) {
                        Image(uiImage: .complexity)
                        Text("Easy")
                    }
                    
                    Divider()
                        .frame(height: 24)
                    
                    HStack(spacing: 8) {
                        Image(uiImage: .servings)
                        Text("2 sv")
                    }
                    
                    Divider()
                        .frame(height: 24)
                    
                    HStack(spacing: 8) {
                        Image(uiImage: .calories)
                        Text("938 Cal")
                    }
                }
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity)
                .background(.neutral03)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .clipShape(RoundedRectangle(cornerRadius: 12))
//            .shadow(color: .black.opacity(0.12), radius: 16, x: 0, y: 6)
        }
    }
}


#Preview {
    RecipeCardView()
}
