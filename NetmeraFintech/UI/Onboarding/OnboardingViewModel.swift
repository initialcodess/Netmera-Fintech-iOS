//
//  OnboardingViewModel.swift
//  NetmeraFintech
//
//  Created by InitialCode on 13.07.2023.
//

import Foundation

class OnboardingViewModel {
    func getHeaderText() -> NSAttributedString {
        return NSAttributedString(
            string: "impact",
            attributes: [NSAttributedString.Key.kern: 12.0]
        )
    }
}
