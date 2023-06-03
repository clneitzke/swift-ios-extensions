//
//  UIView.swift
//  Extensions
//
//  Created by clneitzke on 02/03/21.
//

#if os(iOS)
import Foundation
import UIKit


// MARK: - UIView Anchor
public extension UIView {
            
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
    
    func applyGradient(isVertical: Bool, colorArray: [UIColor]) {
           if let sublayers = layer.sublayers {
               sublayers.filter({ $0 is CAGradientLayer }).forEach({ $0.removeFromSuperlayer() })
           }

           let gradientLayer = CAGradientLayer()
           gradientLayer.colors = colorArray.map({ $0.cgColor })
           if isVertical {
               //top to bottom
               gradientLayer.locations = [0.0, 1.0]
           } else {
               //left to right
               gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
               gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
           }

           backgroundColor = .clear
           gradientLayer.frame = bounds
           layer.insertSublayer(gradientLayer, at: 0)
       }

}
#endif
