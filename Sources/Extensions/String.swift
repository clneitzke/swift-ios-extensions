//
//  String.swift
//  Extensions
//
//  Created by clneitzke on 10/01/22.
//

import Foundation

public extension String {
    func trim() -> String {
          return self.components(separatedBy: CharacterSet.newlines).joined(separator: " ")
    }
    
    func condenseWhitespace() -> String {
        let components = self.components(separatedBy: .whitespacesAndNewlines)
        return components.filter { !$0.isEmpty }.joined(separator: " ")
    }
}

