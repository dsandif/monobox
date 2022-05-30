//
//  FileRowView.swift
//  Monobox
//
//  Created by Darien Sandifer on 5/30/22.
//

import SwiftUI

struct FileRowView: View {
    var body: some View {
      HStack(alignment: .center){
        IconItemView(category: .electricity)
        Text("License Agreement.pdf")
          .font(.custom("Forza-Book", size: 11.0))
          .foregroundColor(Color.headings)
        
        Spacer()
        Spacer()
        Text("23.May.2022")
          .foregroundColor(.gray)
          .font(.custom("Forza-Book", size: 10.0))
        Spacer()
        HStack(spacing:20){
          Image(systemName: "person.3.sequence.fill")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 15)
          Image(systemName: "star")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 15)
          Image(systemName: "ellipsis")
            .frame(height: 15)
            .rotationEffect(Angle.degrees(90))
        }.foregroundColor(Color.headings)
      }
      .padding([.horizontal], 20)
      .frame(minWidth: 500, maxWidth: 1000, minHeight: 70)
      .cornerRadius(10)
      .background(Color.lightBackground)
    }
}

struct FileRowView_Previews: PreviewProvider {
    static var previews: some View {
        FileRowView()
    }
}
