//
//  AllFilesView.swift
//  Monobox
//
//  Created by Darien Sandifer on 5/29/22.
//

import SwiftUI

struct AllFilesView: View {
    var body: some View {
        RecentFilesView()
    }
}

enum PickerTab: String, CaseIterable, Identifiable {
  case chocolate = "list.dash", vanilla = "rectangle.grid.2x2", strawberry = "square.grid.3x3.fill"
    var id: Self { self }
}

struct RecentFilesView: View {
  @State private var selectedTab: PickerTab = .strawberry
  let columns:[GridItem] = Array(repeating: .init(.adaptive(minimum: 240)), count: 1)
  let images = (1..<22)
    var body: some View {
      VStack{
        HStack(alignment: .center){
          Text("Recent Files")
            .font(Font.custom("Forza-Book", size: 13))
          Spacer()
          Picker("", selection: $selectedTab) {
            ForEach(PickerTab.allCases) { flavor in
              Image(systemName:flavor.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
            }
          }
          .pickerStyle(.segmented)
          .frame(width: 200)
          
        }
        .frame(height: 60)

      
        ScrollView {
          LazyVGrid(columns: columns, alignment: .leading, spacing: 15) {
            ForEach(images.shuffled(), id: \.self){i in
              FileView(fileName: i.description)
            }
          }.padding(.bottom, 50)
          
          VStack(alignment: .leading){
            Text("All Files")
              .font(.custom("Forza-Book", size: 12.0))
            Divider()
            FileRowView()
            FileRowView()
            FileRowView()
            FileRowView()
            FileRowView()
            FileRowView()
            FileRowView()
            FileRowView()
          }
        }
        
        Spacer()
      }
      
    }
}
struct AllFilesView_Previews: PreviewProvider {
    static var previews: some View {
        AllFilesView()
    }
}
