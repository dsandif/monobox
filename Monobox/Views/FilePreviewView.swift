//
//  FilePreviewView.swift
//  Monobox
//
//  Created by Darien Sandifer on 5/29/22.
//

import SwiftUI

struct FilePreviewView: View {
    var body: some View {
      VStack(alignment: .leading){
        HStack(alignment: .bottom) {
            Image(systemName: "doc.text")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 12)
              .foregroundColor(Color.bodyText)
              
            Text("File Preview")
              .font(.custom("", size: 13.0))
              .kerning(0.7)
              .foregroundColor(.headings)
          Spacer()
        }.padding([.top],20)
        
        Divider()
          .padding(.vertical, 15)
        
        Rectangle()
          .frame(width: 200, height: 130)
          
        Divider()
          .padding(.vertical, 15)
        
        VStack(alignment: .leading, spacing: 8){
          Text("Virtual Tour Scope.mp4")
            .foregroundColor(.headings)
            .fontWeight(.semibold)
          
          Text("2.5 GB, 01H:30M:45S")
            .font(.caption2)
            .kerning(0.5)
        }
        
        VStack(alignment: .leading, spacing: 8){
          Text("File Description")
            .kerning(0.5)
            .font(.caption2)
            .foregroundColor(.headings)
          Text("I literally just learned that my favourite board game in the whole world (Monopoly) is based on Atlantic City!")
            .font(.caption2)
            .foregroundColor(.bodyText)
            .fontWeight(.light)
        }.padding(.vertical)

        Divider()
          .padding(.vertical, 15)
        VStack(alignment: .leading, spacing: 15){
          Text("File Shared With:")
            .kerning(0.5)
            .font(.caption2)
            .foregroundColor(.headings)
          HStack(alignment: .center, spacing: 20){
            IconItemView(category: .other)
            Text("Zion Williamson")
              .font(.caption2)
          }
          HStack(alignment: .center, spacing: 20){
            IconItemView(category: .other)
            Text("Zach Lavine")
              .font(.caption2)
          }
          HStack(alignment: .center, spacing: 20){
            IconItemView(category: .other)
            Text("Brandon Roy")
              .font(.caption2)
          }
        }
        
        Spacer(minLength: 200)
      }
      .frame(width: 200)
      .padding([.horizontal],30)
      .foregroundColor(Color.gray)
      .background(Color.lightBackground)
      
//        HStack(spacing: 2){
//          Image(systemName: "brain.head.profile")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(height: 10)
//          Text("gatewai")
//            .kerning(1)
//            .font(.custom("", size: 6.5))
//            .font(.caption2)
//            .fontWeight(.ultraLight)
//
//      }
      
    }
}

struct FilePreviewView_Previews: PreviewProvider {
    static var previews: some View {
        FilePreviewView()
    }
}
