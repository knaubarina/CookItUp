//  Created by Arina Knaub on 09/06/2024.

import SwiftUI

struct ShareButton: View {
    var body: some View {
        Button {
            // share recipe logic
        } label: {
            Image(.share)
                .resizable()
                .scaledToFill()
                .frame(width: 30, height: 30)
        }
        .buttonStyle(.interactable)
    }
}

#Preview {
    ShareButton()
}
