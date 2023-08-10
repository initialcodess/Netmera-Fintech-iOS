//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import UIKit

extension UIViewController {
    func navigateOnboardingVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "OnboardingVC")
        viewController.modalPresentationStyle = .overFullScreen
        present(viewController, animated: true)
    }

    func navigateManageCardVC(card: Card) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ManageCardVC") as! ManageCardVC
        viewController.modalPresentationStyle = .overFullScreen
        viewController.modalTransitionStyle = .crossDissolve
        viewController.card = card
        present(viewController, animated: true)
    }

    func navigateTransactionDetailVC(transaction: Transaction) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "TransactionDetailVC") as! TransactionDetailVC
        viewController.modalPresentationStyle = .overFullScreen
        viewController.modalTransitionStyle = .crossDissolve
        viewController.transaction = transaction
        present(viewController, animated: true)
    }

    func navigateSendMoneyVC(contact: Contact) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SendMoneyVC") as! SendMoneyVC
        viewController.contact = contact
        present(viewController, animated: true)
    }
}
