//
//  DoubleExtensions.swift
//  Zawaya
//
//  Created by Mohamed Elmaazy on 11/03/2023.
//

import Foundation

extension Double {
    
    func round(places: Int = 3) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
