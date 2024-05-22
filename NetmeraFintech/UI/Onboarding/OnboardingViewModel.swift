//  Copyright (c) 2023 Netmera.
//  @author Initial Code

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
        FirebaseEvents.getStartedEvent()
    }

    func updateUserAndSendSignInEvent(email: String) {
        let user = NMImpactFintechUser()
        user.userId = email
        Netmera.updateUser(user: user)
        NetmeraEvents.signInEvent()
        FirebaseEvents.signInEvent()
    }
}
