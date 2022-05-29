//
//  CardView.swift
//  Monobox
//
//  Created by Darien Sandifer on 5/29/22.
//

import SwiftUI

struct CardView: View {
    var body: some View {
      ZStack(alignment: .leading){
        Rectangle()
          .cornerRadius(8)
          .foregroundColor(.lightBackground)
        VStack(alignment: .leading, spacing: 8){
          Image(
            systemName: "folder.fill")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 22)
            .foregroundColor(.iconShade)
          Spacer()
          Group{
            Text("Documents")
              .bold()
            Text("24 files")
              .font(.caption2)
              .foregroundColor(.bodyText)
          }
        }.padding(20)
      }.frame(width: 250, height: 130)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
