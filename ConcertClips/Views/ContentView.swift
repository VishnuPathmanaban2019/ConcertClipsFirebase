//
//  ContentView.swift
//  ConcertClips
//
//  Created by Vishnu Pathmanaban on 11/4/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
  var body: some View {
    
    TabView {
        FeedView().ignoresSafeArea()
      .tabItem {
          Image(systemName: "books.vertical")
          Text("Feed")
      }
      
      LibraryView()
      .tabItem {
          Image(systemName: "books.vertical")
          Text("Library of Content")
      }

      NewUserView()
      .tabItem {
          Image(systemName: "rectangle.stack.badge.plus")
          Text("New User")
      }

      ClipSelectView()
      .tabItem {
          Image(systemName: "rectangle.stack.badge.plus")
          Text("New Clip")
      }
    }
  // But since I am using Firebase, do I really need this anymore?
  //    .environmentObject(libraryViewModel)
  }
}
