//
//  UIUtils.swift
//  HIS_Patient
//
//  Created by m3azy on 03/07/2022.
//

import Foundation
import UIKit


func GET_RATIO(_ value: CGFloat) -> CGFloat {
    if let window = UIApplication.shared.windows.filter({ $0.isKeyWindow }).first {
        let screenFrame = window.frame
        let newValue = value * screenFrame.width / 360
        return newValue
    }
    let newValue = value * UIScreen.main.bounds.width / 360
    return newValue
}
