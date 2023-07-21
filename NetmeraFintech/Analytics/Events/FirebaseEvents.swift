//
//  FirebaseEvents.swift
//  NetmeraFintech
//
//  Copyright (c) 2023 Netmera.
//  @author Initial Code on 17.07.2023.
//

import FirebaseAnalytics

class FirebaseEvents: AppEventsProtocol {
    private static let ACCOUNT = "account"
    private static let ADD_NOTES = "add_notes"
    private static let AMOUNT = "amount"
    private static let APP_SETTINGS = "app_settings"
    private static let CARD_SETTINGS = "card_settings"
    private static let CHANGE_ACCOUNT = "change_account"
    private static let CONTACTS = "contacts"
    private static let CONTACT_US_FOR_SUPPORT = "contact_us_for_support"
    private static let FORGOT_PIN = "forgot_pin"
    private static let FREEZE_CARD = "freeze_card"
    private static let GET_STARTED = "get_started"
    private static let MANAGE_ACCOUNT = "manage_account"
    private static let MESSAGE = "message"
    private static let NEARBY = "nearby"
    private static let PAYMENT_DETAIL = "payment_detail"
    private static let PAYMENT_TRANSFER = "payment_transfer"
    private static let PAY_SOMEONE = "pay_someone"
    private static let PURCHASE = "purchase"
    private static let REQUEST_MONEY = "request_money"
    private static let SEARCH_FOR_PAYEES = "search_for_payees"
    private static let SEE_ALL = "see_all"
    private static let SIGN_IN = "sign_in"
    private static let SIGN_OUT = "sign_out"
    private static let SOMETHING_WRONG = "something_wrong"
    private static let TRANSACTION_ID = "transaction_id"

    static func addNotesEvent() {
        Analytics.logEvent(ADD_NOTES, parameters: nil)
    }

    static func appSettingsEvent() {
        Analytics.logEvent(APP_SETTINGS, parameters: nil)
    }

    static func cardSettingsEvent() {
        Analytics.logEvent(CARD_SETTINGS, parameters: nil)
    }

    static func changeAccountEvent() {
        Analytics.logEvent(CHANGE_ACCOUNT, parameters: nil)
    }

    static func contactsEvent() {
        Analytics.logEvent(CONTACTS, parameters: nil)
    }

    static func contactUsForSupportEvent() {
        Analytics.logEvent(CONTACT_US_FOR_SUPPORT, parameters: nil)
    }

    static func forgotYourPinEvent() {
        Analytics.logEvent(FORGOT_PIN, parameters: nil)
    }

    static func freezeCardEvent(card: Card) {
        Analytics.logEvent(FREEZE_CARD, parameters: [
            FREEZE_CARD: card.cardId.description,
        ])
    }

    static func getStartedEvent() {
        Analytics.logEvent(GET_STARTED, parameters: nil)
    }

    static func manageAccountEvent(lastFourDigits: String) {
        Analytics.logEvent(MANAGE_ACCOUNT, parameters: [
            ACCOUNT: lastFourDigits,
        ])
    }

    static func nearbyEvent() {
        Analytics.logEvent(NEARBY, parameters: nil)
    }

    static func paymentDetailEvent(index: Int?) {
        if let index = index {
            Analytics.logEvent(PAYMENT_DETAIL, parameters: [
                TRANSACTION_ID: index.description,
            ])
        }
    }

    static func paymentTransferEvent(receiver: String) {
        Analytics.logEvent(PAYMENT_TRANSFER, parameters: [
            TRANSACTION_ID: receiver,
        ])
    }

    static func paySomeoneEvent() {
        Analytics.logEvent(PAY_SOMEONE, parameters: nil)
    }

    static func purchaseEvent(amount: String, message: String?) {
        var parameters = [
            AMOUNT: amount,
        ]
        if let message = message {
            parameters[MESSAGE] = message
        }
        Analytics.logEvent(PURCHASE, parameters: parameters)
    }

    static func requestMoneyEvent() {
        Analytics.logEvent(REQUEST_MONEY, parameters: nil)
    }

    static func seeAllEvent() {
        Analytics.logEvent(SEE_ALL, parameters: nil)
    }

    static func searchForPayeesEvent() {
        Analytics.logEvent(SEARCH_FOR_PAYEES, parameters: nil)
    }

    static func signInEvent() {
        Analytics.logEvent(SIGN_IN, parameters: nil)
    }

    static func signOutEvent() {
        Analytics.logEvent(SIGN_OUT, parameters: nil)
    }

    static func somethingWrongEvent() {
        Analytics.logEvent(SOMETHING_WRONG, parameters: nil)
    }
}
