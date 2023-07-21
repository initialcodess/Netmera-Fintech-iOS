//
//  NetmeraEvents.swift
//  NetmeraFintech
//
//  Copyright (c) 2023 Netmera.
//  @author Initial Code on 14.07.2023.
//

import NetmeraCore

class NetmeraEvents: AppEventsProtocol {
    static func addNotesEvent() {
        Netmera.send(AddNotesEvent())
    }

    static func appSettingsEvent() {
        Netmera.send(AppSettingsEvent())
    }

    static func cardSettingsEvent() {
        Netmera.send(CardSettingsEvent())
    }

    static func changeAccountEvent() {
        Netmera.send(ChangeAccountEvent())
    }

    static func contactsEvent() {
        Netmera.send(ContactsEvent())
    }

    static func contactUsForSupportEvent() {
        Netmera.send(ContactUsForSupportEvent())
    }

    static func forgotYourPinEvent() {
        Netmera.send(ForgotYourPinEvent())
    }

    static func freezeCardEvent(card: Card) {
        let event = FreezeCardEvent()
        event.cardID = card.cardId.description
        Netmera.send(event)
    }

    static func getStartedEvent() {
        Netmera.send(GetStartedEvent())
    }

    static func manageAccountEvent(lastFourDigits: String) {
        let event = ManageAccountEvent()
        event.account = lastFourDigits
        Netmera.send(event)
    }

    static func nearbyEvent() {
        Netmera.send(NearbyEvent())
    }

    static func paymentDetailEvent(index: Int?) {
        if let index = index {
            let event = PaymentDetailEvent()
            event.transactionId = index
            Netmera.send(event)
        }
    }

    static func paymentTransferEvent(receiver: String) {
        let event = PaymentTransferEvent()
        event.who = receiver
        Netmera.send(event)
    }

    static func paySomeoneEvent() {
        Netmera.send(PaySomeoneEvent())
    }

    static func purchaseEvent(amount: String, message: String?) {
        let event = PurchaseEvent()
        event.amount = amount
        event.message = message
        Netmera.send(event)
    }

    static func requestMoneyEvent() {
        Netmera.send(RequestMoneyEvent())
    }

    static func seeAllEvent() {
        Netmera.send(SeeAllEvent())
    }

    static func searchForPayeesEvent() {
        Netmera.send(SearchForPayeesEvent())
    }

    static func signInEvent() {
        Netmera.send(SignInEvent())
    }

    static func signOutEvent() {
        Netmera.send(SignOutEvent())
    }

    static func somethingWrongEvent() {
        Netmera.send(SomethingWrongEvent())
    }
}
