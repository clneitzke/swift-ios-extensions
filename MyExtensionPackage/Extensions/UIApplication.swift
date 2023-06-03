//
//  UIApplication.swift
//  Extensions
//
//  Created by clneitzke on 10/01/22.
//

#if os(iOS)
import UIKit

public extension UIApplication{
    class func getPresentedViewController() -> UIViewController? {
        var presentViewController = UIApplication.shared.keyWindow?.rootViewController
        while let pVC = presentViewController?.presentedViewController
        {
            presentViewController = pVC
        }
        
        return presentViewController
    }
}
#endif
