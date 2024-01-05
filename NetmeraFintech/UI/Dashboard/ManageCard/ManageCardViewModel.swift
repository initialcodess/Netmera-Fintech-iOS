//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import Foundation

class ManageCardViewModel {
    private var card: Card?

    enum ManageOptions {
        case freezeCard
        case forgotPin
        case settings
        case support

        var index: Int {
            switch self {
            case .freezeCard: return 0
            case .forgotPin: return 1
            case .settings: return 2
            case .support: return 3
            }
        }
    }

    let options = [
        ManageOption(index: ManageOptions.freezeCard.index,
                     title: "Freeze card",
                     description: "Lost or stolen? Freeze it here",
                     color: Color.pink),
        ManageOption(index: ManageOptions.forgotPin.index,
                     title: "Forgot your PIN?",
                     description: "Lost or stolen? Freeze it here",
                     color: Color.purple),
        ManageOption(index: ManageOptions.settings.index,
                     title: "Settings",
                     description: "Terminate and more",
                     color: Color.blue),
        ManageOption(index: ManageOptions.support.index,
                     title: "Support",
                     description: "Contact us about your card",
                     color: Color.green),
    ].sorted(by: { $0.index < $1.index })

    func setCard(card: Card) {
        self.card = card
    }

    func onOptionClick(index: Int) {
        switch index {
        case ManageOptions.freezeCard.index: sendFreezeCardEvent()
        case ManageOptions.forgotPin.index: sendForgotPinEvent()
        case ManageOptions.settings.index: sendCardSettingsEvent()
        case ManageOptions.support.index: sendSupportEvent()
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
