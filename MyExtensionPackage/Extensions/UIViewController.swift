//
//  UIView.swift
//  Extensions
//
//  Created by clneitzke on 19/12/21.
//

#if os(iOS)
import UIKit

// Global
var vSpinner : UIView?
 
@available(iOS 13.0, *)
public extension UIViewController {
    
    func showSpinner() {
        
        let spinnerView = UIView.init(frame: self.view.bounds)
        spinnerView.backgroundColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 0.8)
        spinnerView.alpha = 0.6
        
        let ai = UIActivityIndicatorView(style: .large)
        
        ai.center = spinnerView.center
        ai.color = .white
        ai.startAnimating()
        
        spinnerView.addSubview(ai)
        self.view.addSubview(spinnerView)
        
        Timer.scheduledTimer(withTimeInterval: 20, repeats: false, block: {_ in self.removeSpinner()})
        
        vSpinner = spinnerView
    }
    
    func removeSpinner() {
        DispatchQueue.main.async {
            vSpinner?.removeFromSuperview()
            vSpinner = nil
        }
    }
}
#endif
