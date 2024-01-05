//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import UIKit

class TransactionDetailVC: UIViewController {
    @IBOutlet var addNotesButton: UIView!
    @IBOutlet var avgSpent: UILabel!
    @IBOutlet var backButton: UIView!
    @IBOutlet var icon: UIImageView!
    @IBOutlet var iconContainer: UIView!
    @IBOutlet var paymentCountAvg: UILabel!
    @IBOutlet var paymentCountTotal: UILabel!
    @IBOutlet var somethingWrongButton: UIView!
    @IBOutlet var transactionCategory: UILabel!
    @IBOutlet var transactionCount: UILabel!
    @IBOutlet var transactionName: UILabel!
    @IBOutlet var transactionType: UILabel!
    @IBOutlet var totalSpent: UILabel!

    private let viewModel = TransactionDetailViewModel()
    var transaction: Transaction!

    override func viewDidLoad() {
        super.viewDidLoad()

        if transaction == nil {
            transaction = DataRepository.getTransactions().first
        }

        addNotesButton.setOnClickListener {
            self.viewModel.sendAddNotesEvent()
            self.showEventDialog()
        }

        backButton.setOnClickListener {
            self.dismiss(animated: true)
        }

        somethingWrongButton.setOnClickListener {
            self.viewModel.sendSomethingWrongEvent()
            self.showEventDialog()
        }

        avgSpent.text = transaction.price
        avgSpent.textColor = transaction.priceColor
        icon.image = UIImage(named: transaction.imageName)
        iconContainer.backgroundColor = transaction.iconContainerColor
        paymentCountAvg.text = "\(transaction.numberOfPayments) payments"
        paymentCountTotal.text = "\(transaction.numberOfPayments) payments"
        transactionCategory.text = transaction.category
        transactionCount.text = transaction.numberOfPayments
        transactionName.text = transaction.name
        transactionType.text = "\(transaction.type.description) • Recurring"
        totalSpent.text = transaction.totalAmount
        totalSpent.textColor = transaction.priceColor
    }
}
