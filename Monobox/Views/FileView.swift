//
//  FileView.swift
//  Monobox
//
//  Created by Darien Sandifer on 6/11/22.
//

import SwiftUI

struct FileView: View {
  @State var fileName: String = "2"
  var randomNum: String {
    return (10..<64).shuffled().randomElement()!.description
  }
  var fileView: some View{
    VStack{
      header
      Image(fileName)
        .resizable()
        .foregroundColor(.gray)
        .frame(width: 45, height: 55)
    }
  }
  var filename: some View{
    Text("Vlog-2" + fileName+".pdf")
      .lineLimit(56)
      .font(.custom("Forza-light", size: 10.0))
      .foregroundColor(Color.headings)
      .lineSpacing(4)
  }
  var videoView: some View{
    ZStack(alignment:.top){
      ZStack(alignment: .bottomTrailing){
        Image(fileName)
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: .infinity, height: 130)
          .clipped()

          RoundedRectangle(cornerRadius: 5)
            .foregroundColor(.lightBackground.opacity(0.8))
            .frame(width: 40, height: 20)
            .padding()
            .overlay(Text(randomNum + ":" + randomNum)
              .font(.custom("Forza-Light", size: 7.0))
              .foregroundColor(.white)
              .kerning(0.5)
            )
      }
      
      VStack{
        header
      }
    }
  }
  
  var footer: some View{
    HStack{
      VStack(alignment: .leading, spacing: 5){
        Text("File Size")
          .font(.custom("Forza-Book", size: 10.0))
          .foregroundColor(Color.headings)
        Text(randomNum.description + ".3 GB")
          .font(.custom("Forza-Light", size: 9.0))
          .foregroundColor(.bodyText)
          .kerning(0.5)
      }
      Spacer()
      Image(systemName: "person.3.sequence.fill")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(height: 15)
    }.foregroundColor(.iconShade)
      .padding(.horizontal,15)
      .padding(.bottom, 18)
  }
  
  var header: some View{
    HStack{
      Image(
        systemName: "star")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(height: 16)
      Spacer()
      Image(systemName: "ellipsis")
        .frame(height: 16)
        .rotationEffect(Angle.degrees(90))
    }
    .padding(15)
  }
  
  var body: some View {
    ZStack{
      Rectangle()
        .cornerRadius(10)
        .foregroundColor(.lightBackground)
      VStack(alignment: .center){
//        fileView
//          .foregroundColor(.iconShade)
        videoView
          .foregroundColor(.white)
        Spacer()
        filename
        Spacer()
        Divider()
          .padding(.horizontal,15)
        Spacer()
        footer
      }
    }
    .frame(width: 210, height: 240)
    .cornerRadius(10)
  }
}

struct FileView_Previews: PreviewProvider {
    static var previews: some View {
        FileView()
    }
}
