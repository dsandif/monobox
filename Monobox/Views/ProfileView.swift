//
//  ProfileView.swift
//  Monobox
//
//  Created by Darien Sandifer on 5/30/22.
//

import SwiftUI

struct ProfileView: View {
  let firstColWidth = 180.0
  let secondColWidth = 220.0
  let prefColwidth = 70.0
  var body: some View {
    VStack(alignment: .leading){
      profileHeader
      Divider()
        .padding(.bottom, 40)
        .padding(.top, 20)
      
      VStack(alignment: .leading, spacing: 20){
        userSettings
        peopleSettings
      }
    }.padding()
  }
  var userSettings: some View{
    Group{
      preferences
      Divider()
      timeZone
      Divider()
      releases
    }
  }
  var peopleSettings: some View {
    Group{
      Divider()
      peopleInfo
      Divider()
      contacts
      Divider()
      mailbox
    }
  }
  var preferences: some View {
      Text("Preferences")
        .font(Forza.headline)
  }
  
  var timeZone: some View {
    VStack{
      HStack(alignment: .center){
        Text("Automatic Time Zone")
          .frame(width: firstColWidth, alignment: .leading)
          .font(Forza.caption)
        Spacer()
        Text("GMT +2:00")
          .frame(width: secondColWidth, alignment: .leading)
          .font(Forza.caption)
          .foregroundColor(.headings)
        Spacer()
        Text("Edit")
          .font(Forza.caption)
      }
      .foregroundColor(.bodyText)
    }
    
  }
  var releases: some View {
    VStack{
      HStack(alignment: .center){
        Text("Early Releases")
          .frame(width: firstColWidth, alignment: .leading)
          .font(Forza.caption)
        Spacer()
        Text("Get included in early releases")
          .frame(width: secondColWidth, alignment: .leading)
          .font(Forza.caption)
          .foregroundColor(.headings)
        Spacer()
        Text("Edit")
          .font(Forza.caption)
      }
      .foregroundColor(.bodyText)
    }
  }
  var peopleInfo:some View {
    VStack{
      HStack(alignment: .center){
        Text("People Info")
          .frame(width: firstColWidth, alignment: .leading)
          .font(Forza.caption)
        Spacer()
        Text("See info about people who view my files")
          .frame(width: secondColWidth, alignment: .leading)
          .font(Forza.caption)
          .foregroundColor(.headings)
        Spacer()
        Text("Edit")
          .font(Forza.caption)
      }
      .foregroundColor(.bodyText)
    }
  }
  var contacts: some View {
    VStack{
      HStack(alignment: .center){
        Text("Manually added contacts")
          .frame(width: firstColWidth, alignment: .leading)
          .font(Forza.caption)
        Spacer()
        Text("34 contacts")
          .frame(width: secondColWidth, alignment: .leading)
          .font(Forza.caption)
          .foregroundColor(.headings)
        Spacer()
        Text("Edit")
          .font(Forza.caption)
      }
      .foregroundColor(.bodyText)
    }
  }
  var mailbox: some View {
    VStack{
      HStack(alignment: .center){
        Text("Mailbox")
          .frame(width: firstColWidth, alignment: .leading)
          .font(Forza.caption)
        Spacer()
        Text("Add a mailbox for people to send files easily")
          .frame(width: secondColWidth, alignment: .leading)
          .font(Forza.caption)
          .foregroundColor(.headings)
        Spacer()
        Text("Edit")
          .font(Forza.caption)
      }.foregroundColor(.bodyText)
    }
  }
  
  var profileHeader: some View {
      HStack(alignment: .top, spacing: 30){
        VStack(alignment: .center, spacing: 18){
          Image("profileImg")
            .resizable()
            .scaledToFill()
            .frame(width: 90, height: 100, alignment: .center)
            .cornerRadius(15)
            .clipped()
          
          Text("Edit Photo")
            .font(Forza.caption2)
            .padding(.vertical,10)
            .padding(.horizontal, 20)
            .background(Color.lightBackground)
            .cornerRadius(5)
        }
        
        VStack(alignment: .leading, spacing: 20){
          HStack(alignment: .center){
            Text("Luka Doncic")
              .font(Forza.title)
              .kerning(-1)
            Spacer()
            Text("Edit")
              .font(Forza.caption)
              .foregroundColor(.bodyText)
          }
          Divider()
          HStack{
              Text("Email")
              .frame(width: prefColwidth, alignment: .leading)
              Spacer()
              Text("lukaDoncic @mavericksbball.com")
                .frame(width: secondColWidth, alignment: .leading)
                .foregroundColor(.headings)
              Spacer()
              Text("Edit")
            }
            .font(Forza.caption)
            .foregroundColor(.bodyText)

            Divider()
          HStack{
            Text("Date Format")
              .frame(width: prefColwidth, alignment: .leading)
            Spacer()
              
            Text("DD/MM/YYYY")
              .frame(width: secondColWidth, alignment: .leading)
              .foregroundColor(.headings)
            Spacer()
            Text("Edit")
          }
          .font(Forza.caption)
          .foregroundColor(.bodyText)

            Divider()
          HStack{
              Text("2FA")
                .frame(width: prefColwidth, alignment: .leading)
              Spacer()
              Text("Not Started")
                .frame(width: secondColWidth, alignment: .leading)
                .foregroundColor(.headings)
              Spacer()
              Text("Start")
            }
            .font(Forza.caption)
            .foregroundColor(.bodyText)
        }
      }
  }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
