//
//  UIViewExtensions.swift
//  HIS_Patient
//
//  Created by m3azy on 04/07/2022.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable var shadow: Bool {
        get {
            return self.shadow
        } set(newValue) {
            if newValue {
                self.layer.shadowColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)
                self.layer.shadowOpacity = 1
                self.layer.shadowOffset = .zero
                self.layer.shadowRadius = GET_RATIO(4)
            }
        }
    }
    
    @IBInspectable var round: CGFloat {
        get {
            return self.round
        } set(newValue) {
            self.layer.cornerRadius = GET_RATIO(newValue)
        }
    }
    
    @IBInspectable var borderColor: UIColor {
        get {
            return self.borderColor
        } set(newValue) {
            self.layer.borderColor = newValue.cgColor
            self.layer.borderWidth = GET_RATIO(1)
        }
    }
    
    func blink() {
        let animation = CABasicAnimation(keyPath: "opacity")
        animation.isRemovedOnCompletion = true
        animation.fromValue = 1
        animation.toValue = 0
        animation.duration = 0.8
        animation.autoreverses = true
        animation.repeatCount = 2
        animation.beginTime = CACurrentMediaTime() + 0.5
        self.layer.add(animation, forKey: nil)
    }
}
