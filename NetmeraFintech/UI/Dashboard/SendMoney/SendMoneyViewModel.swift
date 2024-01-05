//  Copyright (c) 2023 Netmera.
//  @author Initial Code

class SendMoneyViewModel {
    func sendChangeAccountEvent() {
        NetmeraEvents.changeAccountEvent()
        FirebaseEvents.changeAccountEvent()
    }

    func sendMoneySendEvent(amount: String, message: String) {
        NetmeraEvents.purchaseEvent(amount: amount, message: message)
        FirebaseEvents.purchaseEvent(amount: amount, message: message)
    }
}
