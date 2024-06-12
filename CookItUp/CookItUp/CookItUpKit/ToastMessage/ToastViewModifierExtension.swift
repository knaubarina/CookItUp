//  Created by Arina Knaub on 12/06/2024.

import SwiftUI

extension View {

  func toastView(toast: Binding<Toast?>) -> some View {
    self.modifier(ToastModifier(toast: toast))
  }
}
