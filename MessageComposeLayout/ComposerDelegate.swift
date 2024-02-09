//
//  ComposerDelegate.swift
//  MessageComposeLayout
//
//  Created by Sylvain on 09/02/2024.
//

import MessageUI


/// Message composer delegate.
///
/// This delegate role will be to dismiss the controller when user
/// closes it.
///
class ComposerDelegate: NSObject, MFMessageComposeViewControllerDelegate {
  
  /// Handle dismiss of controller.
  ///
  /// - Parameters:
  ///   - controller: the dismissed controller
  ///   - result: has user confirmed or cancelled
  ///
  func messageComposeViewController(_ controller: MFMessageComposeViewController,
                                    didFinishWith result: MessageComposeResult
  ) {
    controller.dismiss(animated: true)
  }
  
}

