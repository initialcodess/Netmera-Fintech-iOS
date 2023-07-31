//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import Foundation

class ManageCardViewModel {
    private var card: Card?

    let options = [
        ManageOption(index: 0, title: "Freeze card", description: "Lost or stolen? Freeze it here", color: Color.pink),
        ManageOption(index: 1, title: "Forgot your PIN?", description: "Lost or stolen? Freeze it here", color: Color.purple),
        ManageOption(index: 2, title: "Settings", description: "Terminate and more", color: Color.blue),
        ManageOption(index: 3, title: "Support", description: "Contact us about your card", color: Color.green),
    ]

    func setCard(card: Card) {
        self.card = card
    }

    func onOptionClick(index: Int) {
        switch index {
        case 0: sendFreezeCardEvent()
        case 1: sendForgotPinEvent()
        case 2: sendCardSettingsEvent()
        case 3: sendSupportEvent()
        default: break
        }
    }

    func sendFreezeCardEvent() {
        if let card = card {
            NetmeraEvents.freezeCardEvent(card: card)
            FirebaseEvents.freezeCardEvent(card: card)
        }
    }

    func sendForgotPinEvent() {
        NetmeraEvents.forgotYourPinEvent()
        FirebaseEvents.forgotYourPinEvent()
    }

    func sendCardSettingsEvent() {
        NetmeraEvents.cardSettingsEvent()
        FirebaseEvents.cardSettingsEvent()
    }

    func sendSupportEvent() {
        NetmeraEvents.contactUsForSupportEvent()
        FirebaseEvents.contactUsForSupportEvent()
    }
}
