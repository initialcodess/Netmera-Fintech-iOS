//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import Foundation

protocol AppEventsProtocol {
    static func addNotesEvent()
    static func appSettingsEvent()
    static func cardSettingsEvent()
    static func changeAccountEvent()
    static func contactsEvent()
    static func contactUsForSupportEvent()
    static func forgotYourPinEvent()
    static func freezeCardEvent(card: Card)
    static func getStartedEvent()
    static func manageAccountEvent(lastFourDigits: String)
    static func nearbyEvent()
    static func paymentDetailEvent(index: Int?)
    static func paymentTransferEvent(receiver: String)
    static func paySomeoneEvent()
    static func purchaseEvent(amount: String, message: String?)
    static func requestMoneyEvent()
    static func seeAllEvent()
    static func searchForPayeesEvent()
    static func signInEvent()
    static func signOutEvent()
    static func somethingWrongEvent()
}
