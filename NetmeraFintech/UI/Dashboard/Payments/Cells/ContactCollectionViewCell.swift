//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import UIKit

class ContactCollectionViewCell: UICollectionViewCell {
    @IBOutlet var contactName: UILabel!
    @IBOutlet var contactNameFirstLetter: UILabel!
    @IBOutlet var contactNameFirstLetterContainer: UIView!
    class var identifier: String {
        return String(describing: self)
    }

    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    public static func create(collectionView: UICollectionView, indexPath: IndexPath, contact: Contact) -> ContactCollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ContactCollectionViewCell.identifier, for: indexPath) as! ContactCollectionViewCell
        cell.setup(contact: contact)
        return cell
    }

    private func setup(contact: Contact) {
        if let image = contact.image {
            contactNameFirstLetterContainer.backgroundColor = UIColor(patternImage: image)
        }

        contactName.text = contact.name
        contactNameFirstLetter.text = contact.name.first?.uppercased()
    }
}
