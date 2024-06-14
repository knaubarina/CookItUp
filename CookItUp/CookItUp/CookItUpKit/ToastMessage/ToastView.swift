//  Created by Arina Knaub on 12/06/2024.

import SwiftUI

struct ToastView: View {
    var style: ToastStyle
    var message: String
    var onCancelTapped: (() -> Void)
    
    var body: some View {
        HStack {
            Image(systemName: style.icon)
                .foregroundStyle(style.themeColor)
            Text(message)
                .typography(.subheadline2)
                .foregroundStyle(.neutral05)
            Spacer()
            Button {
                onCancelTapped()
            } label: {
                Image(.close)
            }
            .buttonStyle(.interactable)
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 54)
        .background(.neutral01)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.primary03, lineWidth: 1)
        )
        .padding(.horizontal, 16)
    }
}

#Preview {
    ToastView(style: .linkCopied,
              message: "Link copied") {
        print("Hello")
    }
}
