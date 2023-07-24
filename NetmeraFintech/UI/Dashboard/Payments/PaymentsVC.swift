//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import UIKit

class PaymentsVC: UIViewController {
    private let viewModel = PaymentsViewModel()

    @IBOutlet var contactsCollectionView: UICollectionView!
    @IBOutlet var payCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        contactsCollectionView.dataSource = self
        contactsCollectionView.delegate = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(
            width: contactsCollectionView.frame.width - 32,
            height: 52
        )
        contactsCollectionView.collectionViewLayout = layout
        payCollectionView.dataSource = self
        payCollectionView.delegate = self
    }
}

extension PaymentsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        if collectionView == contactsCollectionView {
            return viewModel.contacts.count
        }
        return viewModel.payContacts.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == contactsCollectionView {
            return ContactCollectionViewCell.create(collectionView: collectionView,
                                                    indexPath: indexPath,
                                                    contact: viewModel.contacts[indexPath.row])
        }

        return PayCollectionViewCell.create(collectionView: collectionView,
                                            indexPath: indexPath,
                                            contact: viewModel.payContacts[indexPath.row])
    }
}
