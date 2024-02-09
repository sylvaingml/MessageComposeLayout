//
//  ContentView.swift
//  MessageComposeLayout
//
//  Created by Sylvain on 08/02/2024.
//

import SwiftUI
import MessageUI


/// Main view of the app.
///
/// This view display different options to present a message composer.
///
struct ContentView: View {
  
  // MARK: State
  
  @State var showComposer = false
  @State var nbRecipient = 1
  
  // MARK: View builder
  
  var body: some View {
    List {
      Button("Short") {
        nbRecipient = 3
        showComposer = true
      }
      Button("Medium") {
        nbRecipient = 12
        showComposer = true
      }
      Button("Long") {
        nbRecipient = 120
        showComposer = true
      }
    }
    .sheet(isPresented: $showComposer,
           onDismiss: nil, content: {
      
      switch MFMessageComposeViewController.canSendText() {
        case true:
          ComposerHost(nbRecipients: nbRecipient)
        case false:
          Text("Cannot send message")
      }
      
    })
  }
}

// MARK: Preview

#if DEBUG

#Preview {
  ContentView()
}

#endif
