//
//  UIViewControllerExtensions.swift
//  Youveta
//
//  Created by m3azy on 08/02/2022.
//

import Foundation
import UIKit

extension UIViewController: UIGestureRecognizerDelegate {
    
    func disableDarkMode() {
        if #available(iOS 13.0, *) {
            // Always adopt a light interface style.
            overrideUserInterfaceStyle = .light
        }
    }
    
    func enableBackGesture() {
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    
    func disableBackGesture() {
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
}
