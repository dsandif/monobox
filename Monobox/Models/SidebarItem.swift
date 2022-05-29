//
//  SidebarItem.swift
//  Monobox
//
//  Created by Darien Sandifer on 5/29/22.
//

import Foundation

struct SidebarItem: Identifiable {
  let id = UUID().uuidString
  let name: String
  let imageName: String
}
