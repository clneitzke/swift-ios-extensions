//
//  UIColor.swift
//  Extensions
//
//  Created by clneitzke on 02/03/21.
//

#if os(iOS)
import Foundation
import UIKit

// MARK: - Add HEX to init
public extension UIColor {
    
    static let mainBlue = UIColor.rgb(red: 0, green: 150, blue: 255)
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat ) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    // add ff at end
    convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            var hexColor = String(hex[start...])

            if hexColor.count == 6 {
                hexColor.append("ff")
            }
            
            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}
#endif
