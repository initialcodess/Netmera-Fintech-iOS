//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import Foundation

class ManageCardViewModel {
    private var card: Card?

    enum ManageOptions {
        case FreezeCard
        case ForgotPin
        case Settings
        case Support

        var index: Int {
            switch self {
            case .FreezeCard: return 0
            case .ForgotPin: return 1
            case .Settings: return 2
            case .Support: return 3
            }
        }
    }

    let options = [
        ManageOption(index: ManageOptions.FreezeCard.index,
                     title: "Freeze card",
                     description: "Lost or stolen? Freeze it here",
                     color: Color.pink),
        ManageOption(index: ManageOptions.ForgotPin.index,
                     title: "Forgot your PIN?",
                     description: "Lost or stolen? Freeze it here",
                     color: Color.purple),
        ManageOption(index: ManageOptions.Settings.index,
                     title: "Settings",
                     description: "Terminate and more",
                     color: Color.blue),
        ManageOption(index: ManageOptions.Support.index,
                     title: "Support",
                     description: "Contact us about your card",
                     color: Color.green),
    ].sorted(by: { $0.index < $1.index })

    func setCard(card: Card) {
        self.card = card
    }

    func onOptionClick(index: Int) {
        switch index {
        case ManageOptions.FreezeCard.index: sendFreezeCardEvent()
        case ManageOptions.ForgotPin.index: sendForgotPinEvent()
        case ManageOptions.Settings.index: sendCardSettingsEvent()
        case ManageOptions.Support.index: sendSupportEvent()
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
