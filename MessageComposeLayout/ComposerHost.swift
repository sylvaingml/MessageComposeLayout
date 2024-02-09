//
//  ComposerHost.swift
//  MessageComposeLayout
//
//  Created by Sylvain on 09/02/2024.
//

import SwiftUI
import MessageUI


/// SwiftUI wrapper to be able to include ``MFMessageComposeViewController``
///
/// As ``MFMessageComposeViewController`` is a UIKit view, this wrapper is needed to
/// be able to present the view controller in a SwiftUI view.
///
struct ComposerHost: UIViewControllerRepresentable
{
  /// The view controller handled by this wrapper
  typealias UIViewControllerType = MFMessageComposeViewController
  
  /// How many recipients needs to be displayed
  var nbRecipients: Int
  
  /// Delegate that will handle the dismiss of view controller
  var composerDelegate = ComposerDelegate()
  
  
  /// Create the view controller that will be shown.
  ///
  /// This will also prepare the list of recipients by using
  /// the ``nbRecipients`` property.
  ///
  /// - Parameter context: view context
  /// - Returns: the message composer view controller
  ///
  func makeUIViewController(context: Context) -> MFMessageComposeViewController {
    let composer = MFMessageComposeViewController()
    composer.messageComposeDelegate = composerDelegate
    
    composer.recipients = PhoneNumberBuilder.createNumbers(quantity: nbRecipients)
    composer.body = "Basic and short message"
    
    return composer
  }
  
  
  /// Called when specific view controller needs to be updated from SwiftUI.
  ///
  /// - Parameters:
  ///   - uiViewController: controller to update
  ///   - context: context information
  ///
  func updateUIViewController(_ uiViewController: MFMessageComposeViewController, context: Context) {
    // Just do nothing here
  }
}

