//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import UIKit

class ManageOptionCollectionViewCell: UICollectionViewCell {
    @IBOutlet var colorView: UIView!
    @IBOutlet var descLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!

    class var identifier: String {
        return String(describing: self)
    }

    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    public static func create(collectionView: UICollectionView,
                              indexPath: IndexPath,
                              manageOption: ManageOption) -> ManageOptionCollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ManageOptionCollectionViewCell.identifier,
                                                      for: indexPath) as! ManageOptionCollectionViewCell
        cell.colorView.backgroundColor = manageOption.color
        cell.descLabel.text = manageOption.description
        cell.titleLabel.text = manageOption.title
        return cell
    }
}
