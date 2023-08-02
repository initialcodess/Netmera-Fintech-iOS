//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import Foundation

class HomeViewModel {
    let cards = DataRepository.getCards()
    let transactions = DataRepository.getTransactions()

    func sendSeeAllEvent() {
        NetmeraEvents.seeAllEvent()
        FirebaseEvents.seeAllEvent()
    }

    func sendSettingsEvent() {
        NetmeraEvents.appSettingsEvent()
        FirebaseEvents.appSettingsEvent()
    }

    func sendManageCardEvent(card: Card) {
        NetmeraEvents.manageAccountEvent(lastFourDigits: card.lastFourDigits)
        FirebaseEvents.manageAccountEvent(lastFourDigits: card.lastFourDigits)
    }

    func sendPaymentDetailEvent(index: Int) {
        NetmeraEvents.paymentDetailEvent(index: index)
        FirebaseEvents.paymentDetailEvent(index: index)
    }
}
