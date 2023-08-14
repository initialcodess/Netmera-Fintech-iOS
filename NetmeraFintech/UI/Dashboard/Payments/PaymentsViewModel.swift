//  Copyright (c) 2023 Netmera.
//  @author Initial Code

class PaymentsViewModel {
    let contacts = DataRepository.getContacts()
    let payContacts = DataRepository.getPayContacts()

    func sendContactsEvent() {
        NetmeraEvents.contactsEvent()
        FirebaseEvents.contactsEvent()
    }

    func sendPaymentTransferEvent(contact: Contact) {
        NetmeraEvents.paymentTransferEvent(receiver: contact.name)
        FirebaseEvents.paymentTransferEvent(receiver: contact.name)
    }

    func sendNearbyEvent() {
        NetmeraEvents.nearbyEvent()
        FirebaseEvents.nearbyEvent()
    }

    func sendPaySomeoneEvent() {
        NetmeraEvents.paySomeoneEvent()
        FirebaseEvents.paySomeoneEvent()
    }

    func sendRequestMoneyEvent() {
        NetmeraEvents.requestMoneyEvent()
        FirebaseEvents.requestMoneyEvent()
    }

    func sendSearchEvent() {
        NetmeraEvents.searchForPayeesEvent()
        FirebaseEvents.searchForPayeesEvent()
    }
}
