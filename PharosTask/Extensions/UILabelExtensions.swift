//
//  UILabelExtensions.swift
//  HIS_Patient
//
//  Created by m3azy on 04/07/2022.
//

import Foundation
import UIKit

extension UILabel {
    
    open override func awakeFromNib() {
        font = .getFont(font)
    }
}
