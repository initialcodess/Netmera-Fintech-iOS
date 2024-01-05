//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    @IBOutlet var cardImageView: UIImageView!

    class var identifier: String {
        return String(describing: self)
    }

    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    public static func create(collectionView: UICollectionView, indexPath: IndexPath, image: UIImage) -> CardCollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardCollectionViewCell.identifier, for: indexPath) as! CardCollectionViewCell
        cell.cardImageView.image = image
        return cell
    }
}
