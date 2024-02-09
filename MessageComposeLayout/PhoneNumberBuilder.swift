//
//  PhoneNumberBuilder.swift
//  MessageComposeLayout
//
//  Created by Sylvain on 09/02/2024.
//

import Foundation


/// Utility class to generate fake phonee numbers.
///
struct PhoneNumberBuilder {
  
  
  /// Generate an array of phone numbers.
  ///
  /// - Parameter quantity: the numbere of phone number to return
  ///
  /// - Returns: Resulting array of phone numbers
  ///
  static func createNumbers(quantity: Int) -> [String] {
    let first = 555_000_000
    let range = 0...quantity
    
    let phones: [String] = range.map {
      "+33 \(first + $0)"
    }
    
    return phones
  }
}
