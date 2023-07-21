//
//  TransactionCollectionViewCell.swift
//  NetmeraFintech
//
//  Copyright (c) 2023 Netmera.
//  @author Initial Code on 19.07.2023.
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

    public static func create(collectionView: UICollectionView,
                              indexPath: IndexPath,
                              transaction: Transaction) -> TransactionCollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TransactionCollectionViewCell.identifier,
                                                      for: indexPath) as! TransactionCollectionViewCell
        cell.setup(transaction: transaction)
        return cell
    }

    private func setup(transaction: Transaction) {
        transactionImage.image = UIImage(named: transaction.imageName)
        transactionTitle.text = transaction.title
        transactionType.text = transaction.type.description
        transactionImageContainer.backgroundColor = transaction.color
        if transaction.amount > 0 {
            transactionAmount.text = String(format: "+$%0.2f", abs(transaction.amount))
            transactionAmount.textColor = Color.green
        } else {
            transactionAmount.text = String(format: "$%0.2f", abs(transaction.amount))
            transactionAmount.textColor = UIColor.black
        }
    }
}
