//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import Foundation

class HomeViewModel {
    let cards = [
        Card(lastFourDigits: "2183", imageName: "Card_1"),
        Card(lastFourDigits: "5569", imageName: "Card_2"),
        Card(lastFourDigits: "8530", imageName: "Card_3"),
    ]
    let transactions = [
        Transaction(imageName: "Shopping", title: "Impact Music App Premium", type: TransactionType.expense, amount: -9.99, color: Color.blue),
        Transaction(imageName: "Shopping", title: "Salary", type: TransactionType.income, amount: 5384.99, color: Color.green),
        Transaction(imageName: "Shopping", title: "Electricity", type: TransactionType.expense, amount: -53.99, color: Color.orange),
    ]

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
