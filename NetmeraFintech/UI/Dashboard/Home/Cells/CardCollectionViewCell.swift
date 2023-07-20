//
//  CardCollectionViewCell.swift
//  NetmeraFintech
//
//  Created by InitialCode on 19.07.2023.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    @IBOutlet var cardImageView: UIImageView!

    class var identifier: String {
        return String(describing: self)
    }

    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    func setImage(image: UIImage) {
        cardImageView.image = image
    }
}
