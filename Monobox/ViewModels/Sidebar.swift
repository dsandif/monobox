//
//  Sidebar.swift
//  Monobox
//
//  Created by Darien Sandifer on 5/29/22.
//

import Foundation
final class SidebarVM: ObservableObject {
    @Published var items: [SidebarItem]
    @Published var selectedId: String?
    static let defaultItems: [SidebarItem] = [
      SidebarItem(name: "home", imageName: "house"),
      SidebarItem(name: "all files", imageName: "folder"),
      SidebarItem(name: "videos", imageName: "video"),
      SidebarItem(name: "photos", imageName: "photo.on.rectangle.angled"),
      SidebarItem(name: "recent", imageName: "clock"),
      SidebarItem(name: "settings", imageName: "gearshape")
    ]
    
    init(items: [SidebarItem] = SidebarVM.defaultItems) {
        self.items = items
        self.selectedId = items[1].id
    }
}
