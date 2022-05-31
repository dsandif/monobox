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
              .font(.custom("Forza-Book", size: 13.0))
              .foregroundColor(.headings)
          Spacer()
        }.padding([.top],20)
        
        Divider()
          .padding(.vertical, 15)
        
        Image("vlog")
          .resizable()
          .frame(width: 200, height: 130)
          .border(Color.bodyText)
          .overlay(
            Image(systemName: "play.fill")
              .font(.headline)
              .background(Color.dashboardBackground.frame(width: 30, height: 30, alignment: .center).cornerRadius(5))
              .foregroundColor(.headings)
              .opacity(0.8)
              
          )
          
        Divider()
          .padding(.vertical, 15)
        
        VStack(alignment: .leading, spacing: 8){
          Text("Colorado Vlog.mp4")
            .foregroundColor(.headings)
            .font(.custom("Forza-Medium", size: 14.0))
          
          Text("2.5 GB, 01H:30M:45S")
            .font(.custom("Forza-Book", size: 9.0))
            .kerning(0.5)
        }
        
        VStack(alignment: .leading, spacing: 8){
          Text("File Description")
            .font(.custom("Forza-Book", size: 10.0))
            .kerning(0.5)
            .foregroundColor(.headings)
          Text("I went to my favourite place on earth (Colorado) and I ended up hiking Pikes Peak in over a foot of snow!")
            .lineSpacing(4)
            .font(.custom("Forza-Book", size: 10.0))
            .foregroundColor(.bodyText)
          
        }.padding(.vertical)

        Divider()
          .padding(.vertical, 15)
        VStack(alignment: .leading, spacing: 15){
          Text("File Shared With:")
            .font(.custom("Forza-Medium", size: 10.0))
            .foregroundColor(.headings)
          HStack(alignment: .center, spacing: 20){
            IconItemView(category: .other)
            Text("Zion Williamson")
              .font(.custom("Forza-Medium", size: 10.0))
              .kerning(0.3)
          }
          HStack(alignment: .center, spacing: 20){
            IconItemView(category: .other)
            Text("Zach Lavine")
              .font(.custom("Forza-Medium", size: 10.0))
              .kerning(0.3)
          }
          HStack(alignment: .center, spacing: 20){
            IconItemView(category: .other)
            Text("Brandon Roy")
              .font(.custom("Forza-Medium", size: 10.0))
              .kerning(0.3)
          }
        }
        
        Spacer(minLength: 200)
      }
      .frame(width: 200)
      .padding([.horizontal],30)
      .foregroundColor(Color.gray)
      .background(Color.lightBackground)
      
    }
}

struct FilePreviewView_Previews: PreviewProvider {
    static var previews: some View {
        FilePreviewView()
    }
}
