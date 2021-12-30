//
//  UIView+extension.swift
//  person-datacore
//
//  Created by Cleber Neitzke on 02/03/21.
//


import Foundation
import UIKit


// MARK: - UIView Anchor
extension UIView {
            
    func anchor(top: NSLayoutYAxisAnchor? = nil,
                left: NSLayoutXAxisAnchor? = nil,
                bottom: NSLayoutYAxisAnchor? = nil,
                right: NSLayoutXAxisAnchor? = nil,
                paddingTop: CGFloat? = 0,
                paddingLeft: CGFloat? = 0,
                paddingBottom: CGFloat? = 0,
                paddingRight: CGFloat? = 0,
                width: CGFloat? = nil,
                height: CGFloat? = nil
    ) {
        
        // Activate Constrains
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            if let paddingTop = paddingTop {
                topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
            }
        }
        
        if let left = left {
            if let paddingLeft = paddingLeft {
                leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
            }
        }

        if let bottom = bottom {
            if let paddingBottom = paddingBottom {
                bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
            }
        }

        if let right = right {
            if let paddingRight = paddingRight {
                rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
            }
        }
        
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }

        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }

    }
}
