//
//  NSLayoutConstraintExtensions.swift
//  HIS_Patient
//
//  Created by m3azy on 04/07/2022.
//

import Foundation
import UIKit

extension NSLayoutConstraint {
    
    open override func awakeFromNib() {
        constant = GET_RATIO(constant)
    }
}
