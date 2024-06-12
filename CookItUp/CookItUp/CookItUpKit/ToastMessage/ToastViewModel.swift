//  Created by Arina Knaub on 12/06/2024.

import SwiftUI

enum ToastStyle {
  case error
  case linkCopied
}

extension ToastStyle {
    var themeColor: Color {
        switch self {
        case .error: return .error02
        case .linkCopied: return .primary03
        }
    }
    
    var icon: String {
        switch self {
        case .error: return "xmark.circle.fill"
        case .linkCopied: return "link.circle.fill"
        }
    }
}
