//  Created by Arina Knaub on 09/06/2024.

import SwiftUI

struct FavouriteButton: View {
    var body: some View {
        Button {
            // add to fav logic
        } label: {
            Image(.addToFavorites)
                .resizable()
                .scaledToFill()
                .frame(width: 30, height: 30)
        }
        .buttonStyle(.interactable)
    }
}

#Preview {
    FavouriteButton()
}
