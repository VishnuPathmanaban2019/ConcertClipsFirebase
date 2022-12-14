//
//  NewClipView.swift
//  ConcertClips
//
//  Created by Siddharth Paratkar on 11/5/22.
//

import SwiftUI

struct NewClipView: View {
  @ObservedObject var clipsManagerViewModel = ClipsManagerViewModel()
  @State private var downloadURL: String
  
  init(downloadURL: String) {
    self.downloadURL = downloadURL
  }

  @State private var name = ""
  @State private var event = ""
  @State private var user = ""
  @State private var section = ""
  @State private var song = ""
  @State private var likes = 0
  @State private var isActive = false

  var body: some View {
    VStack {
      Text("New Clip")
        .font(.title)
        .fontWeight(.bold)
      Form {
        TextField("Name", text: $name)
        TextField("Event", text: $event)
        TextField("User", text: $user)
        TextField("Section", text: $section)
        TextField("Song", text: $song)
      }
      if self.isValidClip() {
        let clip = Clip(name: name, event: event, user: user, section: section, song: song, likes: likes, downloadURL: downloadURL)
        NavigationLink {
          UploadedView(clip: clip).navigationBarBackButtonHidden(true)
        } label: {
          Text("Add Clip")
        }
      }
    }
  }

  private func isValidClip() -> Bool {
    if name.isEmpty { return false }
    if event.isEmpty { return false }
    if user.isEmpty { return false }
    if section.isEmpty { return false }
    if song.isEmpty { return false }
    return true
  }
  
}
