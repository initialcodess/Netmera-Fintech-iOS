//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import UIKit

class PayCollectionViewCell: UICollectionViewCell {
    @IBOutlet var avatar: UIImageView!
    @IBOutlet var noImageLabel: UILabel!
    @IBOutlet var name: UILabel!

    class var identifier: String {
        return String(describing: self)
    }

    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    public static func create(collectionView: UICollectionView, indexPath: IndexPath, contact: Contact) -> PayCollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PayCollectionViewCell.identifier, for: indexPath) as! PayCollectionViewCell
        cell.setup(contact: contact)
        return cell
    }

    private func setup(contact: Contact) {
        if let image = contact.image {
            avatar.isHidden = false
            noImageLabel.isHidden = true
            avatar.image = image
        } else {
            avatar.isHidden = true
            noImageLabel.isHidden = false
            noImageLabel.text = contact.name.first?.uppercased()
        }
        name.text = contact.name
    }
}
