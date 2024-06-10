//  Created by Arina Knaub on 09/06/2024.

import SwiftUI

struct RecipeInfoTitleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Cottage Cheese Pancakes With Berries & Sour Cream")
                .typography(.title)
            
            Text("The main secret of perfect cottage cheese pancakes is to strain the quark, ensuring a smoother texture and removing excess moisture. This process enhances the fluffiness of the pancakes and prevents them from becoming too dense.")
                .typography(.body2)
        }
        .foregroundStyle(.neutral05)
    }
}

#Preview {
    RecipeInfoTitleView()
}
