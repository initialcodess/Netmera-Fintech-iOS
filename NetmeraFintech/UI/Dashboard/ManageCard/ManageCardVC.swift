//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import UIKit

class ManageCardVC: UIViewController {
    var card: Card!

    private let viewModel = ManageCardViewModel()

    @IBOutlet var backView: UIView!
    @IBOutlet var cardImage: UIImageView!
    @IBOutlet var optionsCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        optionsCollectionView.dataSource = self
        optionsCollectionView.delegate = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(
            width: optionsCollectionView.frame.width - 32,
            height: 70
        )
        optionsCollectionView.collectionViewLayout = layout

        backView.setOnClickListener {
            self.dismiss(animated: true)
        }
        viewModel.setCard(card: card)
        cardImage.image = UIImage(named: card.imageName)
    }
}

extension ManageCardVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        return viewModel.options.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return ManageOptionCollectionViewCell.create(collectionView: collectionView,
                                                     indexPath: indexPath,
                                                     manageOption: viewModel.options[indexPath.row])
    }

    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        viewModel.onOptionClick(index: indexPath.row)
        showEventDialog()
    }
}
