//
//  Double.swift
//  NetmeraFintech
//
//  Created by InitialCode on 19.07.2023.
//

import Foundation

extension Double {
    func positiveValue() -> Double {
        if self > 0 {
            return self
        } else {
            return self * -1
        }
    }
}
