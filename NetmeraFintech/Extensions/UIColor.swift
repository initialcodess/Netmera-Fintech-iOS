//
//  UIColor.swift
//  NetmeraFintech
//
//  Created by InitialCode on 13.07.2023.
//

import UIKit

extension UIColor {

    convenience init(hex: UInt, alpha: Double = 1.0) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
