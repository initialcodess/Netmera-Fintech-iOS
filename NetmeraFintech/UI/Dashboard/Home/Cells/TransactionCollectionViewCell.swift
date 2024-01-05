//  Copyright (c) 2023 Netmera.
//  @author Initial Code

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
        transactionTitle.text = transaction.name
        transactionType.text = transaction.type.description
        transactionImageContainer.backgroundColor = transaction.iconContainerColor
        transactionAmount.textColor = transaction.priceColor
        transactionAmount.text = transaction.price
    }
}
