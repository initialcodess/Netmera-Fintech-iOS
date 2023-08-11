//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import UIKit

class DeeplinkHandler {
    private static let MANAGE_CARD = "managecard"
    private static let TRANSACTION_DETAIL = "transactiondetail"
    private static let SEND_MONEY = "sendmoney"

    private static var waitingHandleScreenName: String?

    static func topViewController() -> UIViewController? {
        let window = UIApplication.shared.keyWindow
        guard let rootViewController = window?.rootViewController else {
            return nil
        }

        var topViewController = rootViewController
        while let presentedViewController = topViewController.presentedViewController {
            topViewController = presentedViewController
        }

        return topViewController
    }

    static func handle(screenName: String) {
        let vc = topViewController()
        if vc == nil {
            waitingHandleScreenName = screenName
            return
        }
        switch screenName {
        case MANAGE_CARD: vc?.navigateManageCardVC(card: DataRepository.getCards().randomElement()!)
        case TRANSACTION_DETAIL: vc?.navigateTransactionDetailVC(transaction: DataRepository.getTransactions().randomElement()!)
        case SEND_MONEY: vc?.navigateSendMoneyVC(contact: DataRepository.getPayContacts().randomElement()!)
        default: break
        }
    }

    static func checkIfWaitingHandleExists() {
        if let name = waitingHandleScreenName {
            waitingHandleScreenName = nil
            handle(screenName: name)
        }
    }
}
