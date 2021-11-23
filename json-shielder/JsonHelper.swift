//
//  JsonHelper.swift
//  json-shielder
//
//  Created by Maxim Skryabin on 23.11.2021.
//

import Foundation

struct JsonHelper {
  static func shield(_ input: String) -> String {
    return input.compactMap({ $0.unicodeScalars.first?.escaped(asASCII: true) ?? "🙊" }).joined()
  }
  
  static func unshield(_ input: String) -> String {
    // TODO
    
    let entities = ["\0", "\t", "\n", "\r", "\"", "\'", "\\"]
    var current = input
    for entity in entities {
      let descriptionCharacters = entity.debugDescription.dropFirst().dropLast()
      let description = String(descriptionCharacters)
      current = current.replacingOccurrences(of: description, with: entity)
    }
    return current
  }
}

