//
//  ColourManager.swift
//  Monobox
//
//  Created by Darien Sandifer on 5/29/22.
//

import Foundation
import SwiftUI

extension Color{
  static let dashboardBackground = Color("Dark Background")
  static let lightBackground = Color("Light Background")
  static let bodyText = Color("bodytext")
  static let darkGrey = Color("Dark Grey")
  static let headings = Color("headings")
  static let iconShade = Color("iconshade")
}


//class Theme {
//    static func navigationBarColors(background : UIColor?,
//       titleColor : UIColor? = nil, tintColor : UIColor? = nil ){
//
//        let navigationAppearance = UINavigationBarAppearance()
//        navigationAppearance.configureWithOpaqueBackground()
//        navigationAppearance.backgroundColor = background ?? .clear
//        navigationAppearance.shadowImage = nil // remove line underneathe
//        navigationAppearance.shadowColor = .none
//
//        navigationAppearance.titleTextAttributes = [.foregroundColor: titleColor ?? .black]
//        navigationAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor ?? .black]
//
//        UINavigationBar.appearance().standardAppearance = navigationAppearance
//        UINavigationBar.appearance().compactAppearance = navigationAppearance
//        UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance
//
//        UINavigationBar.appearance().tintColor = tintColor ?? titleColor ?? .black
//    }
//}
