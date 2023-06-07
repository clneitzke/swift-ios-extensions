//
//  File.swift
//  
//
//  Created by Cleber Neitzke on 04/06/23.
//

#if os(iOS)
import Foundation
import UIKit

extension UIImage {
    func clone() -> UIImage? {
        guard let originalCgImage = self.cgImage, let newCgImage = originalCgImage.copy() else {
            return nil
        }

        return UIImage(cgImage: newCgImage, scale: self.scale, orientation: self.imageOrientation)
    }
}
#endif
