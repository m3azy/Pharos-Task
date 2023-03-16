//
//  UIFont+Extension.swift
//  Youveta
//
//  Created by MhMuD SalAh on 31/01/2022.
//  Copyright © 2022 MhMuD SalAh. All rights reserved.
//

import UIKit

enum AppFont: String {
    case regular = "DINNextLTW23-Regular"
    case bold = "DINNextLTW23-Bold"
    case light = "DINNextLTW23-Light"
}
extension UIFont {
    
    class func getFont(_ font: UIFont) -> UIFont {
        let name = font.fontName
        let size = font.pointSize
        let nameArr = name.components(separatedBy: "-")
        if nameArr.count > 1 {
            switch nameArr[1].lowercased() {
            case "Regular".lowercased():
                return UIFont(name: AppFont.regular.rawValue, size: GET_RATIO(size)) ?? .systemFont(ofSize: GET_RATIO(size))
            case "Bold".lowercased():
                return UIFont(name: AppFont.bold.rawValue, size: GET_RATIO(size)) ?? .boldSystemFont(ofSize: GET_RATIO(size))
            case "ExtraBold".lowercased():
                return UIFont(name: AppFont.bold.rawValue, size: GET_RATIO(size)) ?? .boldSystemFont(ofSize: GET_RATIO(size))
            case "SemiBold".lowercased():
                return UIFont(name: AppFont.bold.rawValue, size: GET_RATIO(size)) ?? .boldSystemFont(ofSize: GET_RATIO(size))
            default:
                return UIFont(name: AppFont.regular.rawValue, size: GET_RATIO(size)) ?? .systemFont(ofSize: GET_RATIO(size))
            }
        } else {
            return UIFont(name: AppFont.regular.rawValue, size: GET_RATIO(size)) ?? .systemFont(ofSize: GET_RATIO(size))
        }
    }
}
