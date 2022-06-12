//
//  IconItemView.swift
//  Monobox
//
//  Created by Darien Sandifer on 5/29/22.
//

import SwiftUI

enum SelectionMode{
    case active
    case inactive
}


struct IconItemView: View {
    let category: Category
    
    var selected: Bool = true
    
    var isSelectionMode: SelectionMode? = .active
    
    var foreground: Color {
        if(isSelectionMode == .inactive) { return category.color}
        else if(isSelectionMode == .active && selected == true) { return .dashboardBackground}
        else if(isSelectionMode == .active && selected == false) { return Color.white }
        else { return category.color }
    }
    
    var background: Color {
        if(isSelectionMode == .inactive) { return category.color.opacity(0.1) }
        else if(isSelectionMode == .active && selected == true) { return category.color }
        else if(isSelectionMode == .active && selected == false) { return category.color }
        else { return category.color.opacity(0.1) }
    }
    
    var body: some View {
        Image(systemName: category.systemNameIcon)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 10, height: 10)
        .padding(.all, 8)
        .foregroundColor(foreground)
        .background(background)
        .cornerRadius(6)
    }
}

struct IconItemView_Previews: PreviewProvider {
    static var previews: some View {
      IconItemView(category: Category.parking)
    }
}

enum Category: String, CaseIterable {
    ///categories
    case maintenance
    case taxes
    case trash
    case water
    case appliances_furnishings
    case electricity
    case gas
    case insurance
    case phone
    case cable_internet
    case tv
    case parking
    case security
    case other
    case unknown
    
    var systemNameIcon: String {
        switch self {
            case .maintenance:
                return "wrench.fill"
            case .taxes:
                return "dollarsign.square"
            case .trash:
                return "trash.circle"
            case .water:
                return "drop.fill"
            case .appliances_furnishings:
                return "house.circle"
            case .electricity:
                return "doc.plaintext.fill"
            case .gas:
                return "flame.fill"
            case .insurance:
                return "tornado"
            case .phone:
                return "phone.fill"
            case .cable_internet:
                return "laptopcomputer"
            case .tv:
                return "tv.fill"
            case .parking:
                return "car.fill"
            case .security:
                return "video.fill"
            case .other:
                return "o.square"
            case .unknown:
                return "o.square"
            
        }
    }
    
    var name: String {
        switch self {
            case .maintenance:
                return "maintenance"
            case .taxes:
                return "taxes"
            case .trash:
                return "trash"
            case .water:
                return "water"
            case .appliances_furnishings:
                return "appliances"
            case .electricity:
                return "electric"
            case .gas:
                return "gas"
            case .insurance:
                return "insurance"
            case .phone:
                return "phone"
            case .cable_internet:
                return "cable / internet"
            case .tv:
                return "tv"
            case .parking:
                return "parking"
            case .security:
                return "security"
            case .other:
                return "other"
            case .unknown:
                return "unknown"
                
        }
    }
    
    var color: Color {
      return .iconShade
    }
    
}

extension Category: Identifiable{
    var id: String { rawValue }
}
