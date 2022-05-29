//
//  ContentView.swift
//  Monobox
//
//  Created by Darien Sandifer on 5/29/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = SidebarVM()
    
    var body: some View {
      HStack {
        ListView(options: viewModel.items)
          .frame(width: 80)
          .background(Color.lightBackground)
        MainContentView()
          .padding([.horizontal], 50)
      }
      .background(Color.dashboardBackground)
    }
}

struct ListView: View{
  let options: [SidebarItem]
  
  var body: some View {
    VStack{
      ForEach(options, id:\.id) { option in
        VStack {
          Image(systemName: option.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20)
            .foregroundColor(Color.gray)
            
          Text(option.name.localizedUppercase)
            .font(.custom("", size: 7.0))
            .foregroundColor(.gray)
        }
      }.padding(13)
      Spacer()
      
      HStack(spacing: 2){
        Image(systemName: "brain.head.profile")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(height: 10)
        Text("gatewai")
          .font(.custom("", size: 6))
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
    let columns = [
      GridItem(.flexible()),
      GridItem(.flexible()),
      GridItem(.flexible()),
      GridItem(.flexible()),
      GridItem(.flexible()),
    ]
  
    var body: some View {
      VStack{
        HStack(alignment: .center){
          Text("monobox")
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
        ScrollView {
          LazyVGrid(columns: columns, alignment: .leading) {
              CardView()
              CardView()
              CardView()
              CardView()
              CardView()
              CardView()
              CardView()
            }
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
