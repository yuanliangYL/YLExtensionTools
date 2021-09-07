//
//  YLColor.swift
//  NewDimension
//
//  Created by AlbertYuan on 2020/6/1.
//  Copyright © 2020 Albert. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {

    convenience init(hex: String) {
        self.init(hex: hex, alpha: 1)
    }

    convenience init(hex: String, alpha: CGFloat) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff

        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff,
            alpha: alpha
        )
    }

    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }

    convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: 1.0
        )
    }

    static func random() -> UIColor {
        return UIColor(red: CGFloat(arc4random_uniform(255)), green: CGFloat(arc4random_uniform(255)), blue: CGFloat(arc4random_uniform(255)), alpha: CGFloat(1))
    }

    static func random(with alpha: CGFloat) -> UIColor {
        return UIColor(red: CGFloat(arc4random_uniform(255)), green: CGFloat(arc4random_uniform(255)), blue: CGFloat(arc4random_uniform(255)), alpha: alpha)
    }
}
