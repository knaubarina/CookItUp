//  Created by Arina Knaub on 05/06/2024.

import SwiftUI

struct NavigationBarIcons: View {
    
    @State private var isPressed = false

    var body: some View {
        VStack {
            HStack(spacing: 16) {
                Button {
                    // back logic
                } label: {
                    Image(.back)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                        .scaleEffect(isPressed ? 1.2 : 1.0)
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
}

#Preview {
    NavigationBarIcons()
}
