//
//  UILabel+.swift
//  cafe-passado
//
//  Created by Cleber Neitzke on 18/12/22.
//  Copyright © 2022 Cleber Neitzke. All rights reserved.
//

#if os(iOS)
import UIKit

// MARK: - UILabel Shadow
extension UILabel {
    func shadow() {
        self.layer.shadowColor = self.textColor.cgColor
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 1.0
        self.layer.shadowOpacity = 0.3
        self.layer.masksToBounds = false
        self.layer.shouldRasterize = true
    }
}
#endif
