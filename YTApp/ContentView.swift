//
//  ContentView.swift
//  YTApp
//
//  Created by Ariq Hikari on 14/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
        TabView {
          Home()
            .tabItem {
              Image(systemName: "house.fill")
              Text("Home")
            }
          
          Home()
            .tabItem {
              Image(systemName: "paperplane.fill")
              Text("Explore")
            }
          
          Home()
            .tabItem {
              Image(systemName: "tray.fill")
              Text("Subscription")
            }
          
          Home()
            .tabItem {
              Image(systemName: "envelope.fill")
              Text("Inbox")
            }
          
          Home()
            .tabItem {
              Image(systemName: "play.rectangle.fill")
              Text("Collection")
            }
        }
        .accentColor(.red)
      }
    }
}

#Preview {
    ContentView()
}

struct Home: View {
  var body: some View {
    NavigationView {
      Content()
        .navigationBarItems(
          leading: HStack {
            Button(action: {print("Hello Button")}, label: {
              Image("youtube")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 100, height: 40)
            })
          },
          trailing: HStack(spacing: 15) {
            Button(action: {print("Hello Print")}, label: {
              Image(systemName: "tray.full")
                .foregroundColor(Color.secondary)
            })
            
            Button(action: {print("Hello Print")}, label: {
              Image(systemName: "video.fill")
                .foregroundColor(Color.secondary)
            })
            
            Button(action: {print("Hello Print")}, label: {
              Image(systemName: "magnifyingglass")
                .foregroundColor(Color.secondary)
            })
            
            Button(action: {print("Hello Print")}, label: {
              Image("profile")
                .renderingMode(.original)
                .resizable()
                .frame(width: 30, height: 30)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            })
          }
        )
        .navigationBarTitle("", displayMode: .inline)
    }.navigationViewStyle(StackNavigationViewStyle())
  }
}

struct Content: View {
  var body: some View {
    List {
      
      // content1
      VStack {
        ZStack(alignment: .bottomTrailing) {
          Image("content1")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
          
          Text("7:15")
            .padding(.all, 5)
            .foregroundColor(Color.white)
            .background(Color.black)
            .font(.caption)
            .cornerRadius(5)
            .padding(.trailing, 15)
            .padding(.bottom, 10)
        }
        
        HStack(spacing: 20) {
          Image("profile")
            .resizable()
            .frame(width: 40, height: 40)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
          
          VStack(alignment: .leading) {
            Text("Flutter 01. Introduction to Flutter")
              .font(.headline)
            HStack {
              Text("Ariq Hikari - 154k views - 4 years ago")
                .font(.caption)
            }
          }
          
          Spacer()
          Image(systemName: "list.bullet")
        }
        .padding(.all, 5)
      }
      
      // content2
      VStack {
        ZStack(alignment: .bottomTrailing) {
          Image("content2")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
          
          Text("12:12")
            .padding(.all, 5)
            .foregroundColor(Color.white)
            .background(Color.black)
            .font(.caption)
            .cornerRadius(5)
            .padding(.trailing, 15)
            .padding(.bottom, 10)
        }
        
        HStack(spacing: 20) {
          Image("profile")
            .resizable()
            .frame(width: 40, height: 40)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
          
          VStack(alignment: .leading) {
            Text("Flutter 03. Text Widget")
              .font(.headline)
            HStack {
              Text("Ariq Hikari - 80k views - 4 years ago")
                .font(.caption)
            }
          }
          
          Spacer()
          Image(systemName: "list.bullet")
        }
        .padding(.all, 5)
      }
      
      // content3
      VStack {
        ZStack(alignment: .bottomTrailing) {
          Image("content3")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
          
          Text("7:49")
            .padding(.all, 5)
            .foregroundColor(Color.white)
            .background(Color.black)
            .font(.caption)
            .cornerRadius(5)
            .padding(.trailing, 15)
            .padding(.bottom, 10)
        }
        
        HStack(spacing: 20) {
          Image("profile")
            .resizable()
            .frame(width: 40, height: 40)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
          
          VStack(alignment: .leading) {
            Text("Flutter 28. Mengubah Tampilan TabBar")
              .font(.headline)
            HStack {
              Text("Ariq Hikari - 11k views - 4 years ago")
                .font(.caption)
            }
          }
          
          Spacer()
          Image(systemName: "list.bullet")
        }
        .padding(.all, 5)
      }
    }
  }
}
