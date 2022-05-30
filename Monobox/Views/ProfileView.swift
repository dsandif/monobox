//
//  ProfileView.swift
//  Monobox
//
//  Created by Darien Sandifer on 5/30/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
      HStack{
        VStack(alignment: .center){
          Rectangle()
            .frame(width: 100, height: 100, alignment: .leading)
          Text("Edit Photo")
            .font(Forza.caption2)
        }
        VStack(alignment: .leading, spacing: 20){
          HStack(alignment: .center){
            Text("Luka Doncic")
              .font(Forza.title)
              .kerning(-1)
            Spacer()
            Text("Edit")
              .foregroundColor(.bodyText)
          }
          
          HStack(alignment: .top){
            VStack(alignment: .leading, spacing: 20){
              Text("Email")
              Text("Date Format")
              Text("Security")
              
            }.foregroundColor(.bodyText)
            
            Spacer()
            VStack(alignment: .leading, spacing: 20){
              Text("lukaDoncic @mavericks.com")
              Text("MM/DD/YYYY")
              Text("Not Started")
            }
            .font(Forza.caption)
            .foregroundColor(.headings)
            
            Spacer()
            VStack(alignment: .trailing, spacing: 20){
              Text("Edit")
              Text("Edit")
              Text("Edit")
            }.foregroundColor(.bodyText)
          }
          
          
//          HStack{
//            Text("Email")
//            Spacer()
//            Text("lukaDoncic @mavericksbball.com")
//              .foregroundColor(.headings)
//            Spacer()
//            Text("Edit")
//          }
//          .font(Forza.caption)
//          .foregroundColor(.bodyText)
//
//          Divider()
//          HStack{
//            Text("Date Format")
//            Spacer()
//            Text("DD/MM/YYYY")
//              .foregroundColor(.headings)
//            Spacer()
//            Text("Edit")
//
//          }
//          .font(Forza.caption)
//          .foregroundColor(.bodyText)
//
//          Divider()
//          HStack{
//            Text("Two-Factor Authentication")
//            Spacer()
//            Text("Start")
//          }
//          .font(Forza.caption)
//          .foregroundColor(.bodyText)
        }
      }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
