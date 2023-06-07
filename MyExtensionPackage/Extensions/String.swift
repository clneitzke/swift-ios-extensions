//
//  String.swift
//  Extensions
//
//  Created by clneitzke on 10/01/22.
//


import Foundation

#if os(iOS)
import UIKit
#endif

public extension String {
    func trim() -> String {
          return self.components(separatedBy: CharacterSet.newlines).joined(separator: " ")
    }
    
    func condenseWhitespace() -> String {
        let components = self.components(separatedBy: .whitespacesAndNewlines)
        return components.filter { !$0.isEmpty }.joined(separator: " ")
    }
    
#if os(iOS)
    func htmlAttributedString() -> NSAttributedString? {
        // use in label.attributedText
        
        let htmlTemplate = """
        <!doctype html>
        <html lang="pt-br">
          <head>
            <style>
              body {
                font-family: -apple-system;
                font-size: 14px;
              }
            </style>
          </head>
          <body>
            \(self)
          </body>
        </html>
        """
//        guard let data = htmlTemplate.data(using: .utf8) else {
        guard let data = htmlTemplate.data(using: .isoLatin1) else {
            return nil
        }

        
        guard let attributedString = try? NSAttributedString(
            data: data,
            options: [.documentType: NSAttributedString.DocumentType.html],
            documentAttributes: nil
            ) else {
            return nil
        }

        return attributedString
        
    }
#endif
}


