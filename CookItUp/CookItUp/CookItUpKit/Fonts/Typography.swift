//  Created by Arina Knaub on 30/05/2024.

import SwiftUI

enum Typography {
    case title
    case heading1
    case heading2
    case buttons
    case headline
    case body1
    case body2
    case subheadline1
    case subheadline2
    case footnote
    case caption1
    case caption2
    case caption3
    case caption4
    
    var textStyle: TextStyle {
        switch self {
            
        case .title:
            return TextStyle(
                font: .title(withSize: 34),
                lineSpacing: lineSpacing(font: .title(withSize: 34), desiredLineHeight: 41)
            )
            
        case .heading1:
            return TextStyle(
                font: .heading1(withSize: 28),
                lineSpacing: lineSpacing(font: .heading1(withSize: 28), desiredLineHeight: 34)
            )
            
        case .heading2:
            return TextStyle(
                font: .heading2(withSize: 20),
                lineSpacing: lineSpacing(font: .heading2(withSize: 20), desiredLineHeight: 25)
            )
            
        case .buttons:
            return TextStyle(
                font: .buttons(withSize: 17),
                lineSpacing: lineSpacing(font: .buttons(withSize: 17), desiredLineHeight: 22)
            )
            
        case .headline:
            return TextStyle(
                font: .headline(withSize: 17),
                lineSpacing: lineSpacing(font: .headline(withSize: 17), desiredLineHeight: 22)
            )
            
        case .body1:
            return TextStyle(
                font: .body1(withSize: 16),
                lineSpacing: lineSpacing(font: .body1(withSize: 16), desiredLineHeight: 22)
            )
            
        case .body2:
            return TextStyle(
                font: .body2(withSize: 16),
                lineSpacing: lineSpacing(font: .body2(withSize: 16), desiredLineHeight: 22)
            )
            
        case .subheadline1:
            return TextStyle(
                font: .subheadline1(withSize: 15),
                lineSpacing: lineSpacing(font: .subheadline1(withSize: 15), desiredLineHeight: 20)
            )
            
        case .subheadline2:
            return TextStyle(
                font: .subheadline2(withSize: 14),
                lineSpacing: lineSpacing(font: .subheadline2(withSize: 14), desiredLineHeight: 20)
            )
            
        case .footnote:
            return TextStyle(
                font: .footnote(withSize: 13),
                lineSpacing: lineSpacing(font: .footnote(withSize: 13), desiredLineHeight: 18)
            )
            
        case .caption1:
            return TextStyle(
                font: .caption1(withSize: 12),
                lineSpacing: lineSpacing(font: .caption1(withSize: 12), desiredLineHeight: 21)
            )
            
        case .caption2:
            return TextStyle(
                font: .caption2(withSize: 12),
                lineSpacing: lineSpacing(font: .caption2(withSize: 12), desiredLineHeight: 21)
            )
            
        case .caption3:
            return TextStyle(
                font: .caption3(withSize: 13),
                lineSpacing: lineSpacing(font: .caption3(withSize: 13), desiredLineHeight: 20)
            )
            
        case .caption4:
            return TextStyle(
                font: .caption4(withSize: 10),
                lineSpacing: lineSpacing(font: .caption4(withSize: 10), desiredLineHeight: 13)
            )
        }
    }
    
    private func lineSpacing(font: UIFont, desiredLineHeight: CGFloat) -> CGFloat {
        let originalLineHeight = font.lineHeight
        let lineHeight = desiredLineHeight - originalLineHeight
        return lineHeight
    }
}

extension Typography {
    struct TextStyle {
        let font: Font
        let lineSpacing: Double
    }
}

private extension Font {
    static func title(withSize size: CGFloat) -> Font {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .bold))
        return Font(font as CTFont)
    }
    
    static func heading1(withSize size: CGFloat) -> Font {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .bold))
        return Font(font as CTFont)
    }
    
    static func heading2(withSize size: CGFloat) -> Font {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .semibold))
        return Font(font as CTFont)
    }
    
    static func buttons(withSize size: CGFloat) -> Font {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .bold))
        return Font(font as CTFont)
    }
    
    static func headline(withSize size: CGFloat) -> Font {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .medium))
        return Font(font as CTFont)
    }
    
    static func body1(withSize size: CGFloat) -> Font {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .regular))
        return Font(font as CTFont)
    }
    
    static func body2(withSize size: CGFloat) -> Font {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .medium))
        return Font(font as CTFont)
    }
    
    static func subheadline1(withSize size: CGFloat) -> Font {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .regular))
        return Font(font as CTFont)
    }
    
    static func subheadline2(withSize size: CGFloat) -> Font {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .regular))
        return Font(font as CTFont)
    }
    
    static func footnote(withSize size: CGFloat) -> Font {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .medium))
        return Font(font as CTFont)
    }
    
    static func caption1(withSize size: CGFloat) -> Font {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .semibold))
        return Font(font as CTFont)
    }
    
    static func caption2(withSize size: CGFloat) -> Font {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .medium))
        return Font(font as CTFont)
    }
    
    static func caption3(withSize size: CGFloat) -> Font {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .regular))
        return Font(font as CTFont)
    }
    
    static func caption4(withSize size: CGFloat) -> Font {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .regular))
        return Font(font as CTFont)
    }
}

private extension UIFont {
    static func title(withSize size: CGFloat) -> UIFont {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .bold))
        return font
    }
    
    static func heading1(withSize size: CGFloat) -> UIFont {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .bold))
        return font
    }
    
    static func heading2(withSize size: CGFloat) -> UIFont {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .semibold))
        return font
    }
    
    static func buttons(withSize size: CGFloat) -> UIFont {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .bold))
        return font
    }
    
    static func headline(withSize size: CGFloat) -> UIFont {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .medium))
        return font
    }
    
    static func body1(withSize size: CGFloat) -> UIFont {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .regular))
        return font
    }
    
    static func body2(withSize size: CGFloat) -> UIFont {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .medium))
        return font
    }
    
    static func subheadline1(withSize size: CGFloat) -> UIFont {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .regular))
        return font
    }
    
    static func subheadline2(withSize size: CGFloat) -> UIFont {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .regular))
        return font
    }
    
    static func footnote(withSize size: CGFloat) -> UIFont {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .medium))
        return font
    }
    
    static func caption1(withSize size: CGFloat) -> UIFont {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .semibold))
        return font
    }
    
    static func caption2(withSize size: CGFloat) -> UIFont {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .medium))
        return font
    }
    
    static func caption3(withSize size: CGFloat) -> UIFont {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .regular))
        return font
    }
    
    static func caption4(withSize size: CGFloat) -> UIFont {
        let font = UIFontMetrics.default.scaledFont(for: .systemFont(ofSize: size, weight: .regular))
        return font
    }
}

extension Text {
    func typography(_ typography: Typography) -> some View {
        return self.modifier(TypographyModifier(typography: typography))
    }
}

extension ButtonStyleConfiguration.Label {
    func typography(_ typography: Typography) -> some View {
        return self.modifier(TypographyModifier(typography: typography))
    }
}
