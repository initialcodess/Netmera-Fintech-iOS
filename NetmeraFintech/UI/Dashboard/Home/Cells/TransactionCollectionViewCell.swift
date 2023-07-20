//
//  TransactionCollectionViewCell.swift
//  NetmeraFintech
//
//  Created by InitialCode on 19.07.2023.
//

import UIKit

class TransactionCollectionViewCell: UICollectionViewCell {
    @IBOutlet var transactionImage: UIImageView!
    @IBOutlet var transactionImageContainer: UIView!
    @IBOutlet var transactionTitle: UILabel!
    @IBOutlet var transactionType: UILabel!
    @IBOutlet var transactionAmount: UILabel!

    class var identifier: String {
        return String(describing: self)
    }

    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    func setup(transaction: Transaction, color: UIColor) {
        transactionImage.image = UIImage(named: transaction.imageName)
        transactionTitle.text = transaction.title
        transactionType.text = transaction.type.description
        transactionImageContainer.backgroundColor = color
        if transaction.amount > 0 {
            transactionAmount.text = String(format: "+$%0.2f", transaction.amount.positiveValue())
            transactionAmount.textColor = Color.green
        } else {
            transactionAmount.text = String(format: "$%0.2f", transaction.amount.positiveValue())
            transactionAmount.textColor = UIColor.black
        }
    }
}
