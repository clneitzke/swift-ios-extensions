//
//  UIApplication+getPresentedViewController.swift
//  BSGPushNote
//
//  Created by Cleber Neitzke on 10/01/22.
//

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
