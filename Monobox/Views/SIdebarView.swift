//
//  ContentView.swift
//  Monobox
//
//  Created by Darien Sandifer on 5/29/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = SidebarVM()
    @State var currentView = "dashboard"
    var body: some View {
      HStack {
        ListView(options: viewModel.items, currentView: $currentView)
          .frame(width: 80)
          .padding([.top],20)
          .background(Color.lightBackground)
        MainContentView(currentView: currentView)
          .padding([.horizontal], 50)
        FilePreviewView()
      }
      .background(Color.dashboardBackground)
    }
}

struct ListView: View{
  let options: [SidebarItem]
  @Binding var currentView: String
  var body: some View {
    VStack{
      ForEach(options, id:\.id) { option in
        VStack(alignment: .center, spacing: 12) {
          Image(systemName: option.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 17)
            .foregroundColor(Color.gray)
            
          Text(option.name.localizedUppercase)
            .font(.custom("Forza-Light", size: 8.0))
            .foregroundColor(.gray)
        }
        .onTapGesture {
          currentView = "videos"
        }

      }.padding([.horizontal],13)
        .padding([.vertical],10)
      Spacer()
      
      HStack(spacing: 2){
        Image(systemName: "brain.head.profile")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(height: 10)
        Text("gatewai")
          .kerning(1)
          .font(.custom("Forza-Light", size: 6.5))
          .font(.caption2)
          .fontWeight(.ultraLight)
      }
      .padding([.bottom],12)
      .foregroundColor(Color.gray)
    }
//    .border(width: 1, edges: [.trailing], color: .gray)
    
  }
}

struct MainContentView: View {
  let columns:[GridItem] = Array(repeating: .init(.adaptive(minimum: 240)), count: 1)
  let currentView: String
  var dashboard: some View {
    ScrollView {
      LazyVGrid(columns: columns, alignment: .leading, spacing: 15) {
          CardView()
          CardView()
          CardView()
          CardView()
          CardView()
          CardView()
          CardView()
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
  }
    var body: some View {
      VStack{
        HStack(alignment: .center){
          Text("Monobox")
            .font(Font.custom("Forza-Book", size: 13))
          
          Spacer()
          HStack(spacing:20){
            Image(systemName: "plus.app")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(height: 15)
            Image(systemName: "magnifyingglass")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(height: 15)
            Image(systemName: "star")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(height: 15)
          }.foregroundColor(Color.gray)
        }
        .frame(height: 60)
        .padding(5)
        
        Divider()
        
        switch(currentView){
        case "dashboard":
          dashboard
        case "videos":
          AllFilesView()
        default:
          dashboard
        }
        
        Spacer()
      }
      
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
