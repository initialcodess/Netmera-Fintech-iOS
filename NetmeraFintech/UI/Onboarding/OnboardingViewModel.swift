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
        var user = ImpactFintechUser()
        user.userName = "Burak"
        user.userId = email
        user.type = "black"
        NetmeraHelper.updateUser(user: user)
        NetmeraEvents.signInEvent()
        FirebaseEvents.signInEvent()
    }
}
