//  Created by Arina Knaub on 09/06/2024.

import SwiftUI

struct ShareButton: View {
    @Binding var toast: Toast?
    
    var body: some View {
        Button {
            toast = Toast(style: .linkCopied, message: "Link copied")
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
    ShareButton(toast: .constant(.none))
}
