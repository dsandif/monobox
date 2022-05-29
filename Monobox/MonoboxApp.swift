//
//  MonoboxApp.swift
//  Monobox
//
//  Created by Darien Sandifer on 5/29/22.
//

import SwiftUI

@main
struct MonoboxApp: App {
    var body: some Scene {
        WindowGroup {
            // use compiler directives #if to detect mac version or ios version
            #if os(macOS)
            // use min wi & he to make the start screen 800 & 1000 and make max wi & he to infinity to make screen expandable when user stretch the screen
            ContentView().frame(minWidth: 800, minHeight: 800, alignment: .center)
            #else
            ContentView()
            #endif
        }
    }
}
