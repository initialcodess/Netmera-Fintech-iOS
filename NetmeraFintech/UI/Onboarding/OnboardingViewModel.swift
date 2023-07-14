//
//  OnboardingViewModel.swift
//  NetmeraFintech
//
//  Created by InitialCode on 13.07.2023.
//

import NetmeraCore

class OnboardingViewModel {
    func getHeaderText() -> NSAttributedString {
        return NSAttributedString(
            string: "impact",
            attributes: [NSAttributedString.Key.kern: 12.0]
        )
    }
    
    func sendGetStartedEvent() {
        NetmeraEvents.getStartedEvent()
        // TODO Firebase event
    }
    
    func updateUserAndsendSignInEvent(email: String) {
        var user = ImpactFintechUser()
        user.userName = "Burak"
        user.userId = email
        user.type = "black"
        NetmeraHelper.updateUser(user: user)
        NetmeraEvents.signInEvent()
        // TODO Firebase event
    }
}
