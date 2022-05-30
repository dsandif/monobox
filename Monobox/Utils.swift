//
//  Utils.swift
//  Monobox
//
//  Created by Darien Sandifer on 5/29/22.
//

import Foundation
import SwiftUI
import AppKit

extension View {
    func border(width: CGFloat, edges: [Edge], color: Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}
struct EdgeBorder: Shape {

    var width: CGFloat
    var edges: [Edge]

    func path(in rect: CGRect) -> Path {
        var path = Path()
        for edge in edges {
            var x: CGFloat {
                switch edge {
                case .top, .bottom, .leading: return rect.minX
                case .trailing: return rect.maxX - width
                }
            }

            var y: CGFloat {
                switch edge {
                case .top, .leading, .trailing: return rect.minY
                case .bottom: return rect.maxY - width
                }
            }

            var w: CGFloat {
                switch edge {
                case .top, .bottom: return rect.width
                case .leading, .trailing: return self.width
                }
            }

            var h: CGFloat {
                switch edge {
                case .top, .bottom: return self.width
                case .leading, .trailing: return rect.height
                }
            }
            path.addPath(Path(CGRect(x: x, y: y, width: w, height: h)))
        }
        return path
    }
}


class Forza {

  /// Create a font with the large title text style.
  public static var largeTitle: Font {
      return Font.custom("Forza-Light", size: NSFont.preferredFont(forTextStyle: .largeTitle).pointSize)
  }

  /// Create a font with the title text style.
  public static var title: Font {
      return Font.custom("Forza-Book", size: NSFont.preferredFont(forTextStyle: .title1).pointSize)
  }

  /// Create a font with the headline text style.
  public static var headline: Font {
      return Font.custom("Forza-Book", size: NSFont.preferredFont(forTextStyle: .headline).pointSize)
  }

  /// Create a font with the subheadline text style.
  public static var subheadline: Font {
      return Font.custom("Forza-Light", size: NSFont.preferredFont(forTextStyle: .subheadline).pointSize)
  }

  /// Create a font with the body text style.
  public static var body: Font {
         return Font.custom("Forza-Book", size: NSFont.preferredFont(forTextStyle: .body).pointSize)
     }

  /// Create a font with the callout text style.
  public static var callout: Font {
         return Font.custom("Forza-Book", size: NSFont.preferredFont(forTextStyle: .callout).pointSize)
     }

  /// Create a font with the footnote text style.
  public static var footnote: Font {
         return Font.custom("Forza-Book", size: NSFont.preferredFont(forTextStyle: .footnote).pointSize)
     }

  /// Create a font with the caption text style.
  public static var caption: Font {
         return Font.custom("Forza-Book", size: NSFont.preferredFont(forTextStyle: .caption1).pointSize)
  }
  
  public static var caption2: Font {
    return Font.custom("Forza-Book", size: NSFont.preferredFont(forTextStyle: .caption2).pointSize)
  }

  public static func system(size: CGFloat, weight: Font.Weight = .regular, design: Font.Design = .default) -> Font {
      var font = "Forza-Book"
      switch weight {
      case .bold: font = "Forza-Bold"
      case .heavy: font = "Forza-Black"
      case .light: font = "forza-Light"
      case .medium: font = "Forza-Medium"
      case .semibold: font = "Forza-Medium"
      case .thin: font = "Forza-Thin"
      case .ultraLight: font = "Forza-Light"
      default: break
      }
      return Font.custom(font, size: size)
  }
}
