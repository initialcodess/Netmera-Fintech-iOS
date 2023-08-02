//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import Foundation

class TransactionDetailViewModel {
    func sendAddNotesEvent() {
        NetmeraEvents.addNotesEvent()
        FirebaseEvents.addNotesEvent()
    }

    func sendSomethingWrongEvent() {
        NetmeraEvents.somethingWrongEvent()
        FirebaseEvents.somethingWrongEvent()
    }
}
