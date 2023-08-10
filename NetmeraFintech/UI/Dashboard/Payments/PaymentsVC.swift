//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import UIKit

class PaymentsVC: UIViewController {
    private let viewModel = PaymentsViewModel()

    @IBOutlet var contactsCollectionView: UICollectionView!
    @IBOutlet var nearbyView: UIView!
    @IBOutlet var payCollectionView: UICollectionView!
    @IBOutlet var paySomeoneView: UIView!
    @IBOutlet var requestMoneyView: UIView!
    @IBOutlet var searchView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        contactsCollectionView.dataSource = self
        contactsCollectionView.delegate = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(
            width: contactsCollectionView.frame.width - 40,
            height: 52
        )

        contactsCollectionView.collectionViewLayout = layout
        payCollectionView.dataSource = self
        payCollectionView.delegate = self

        nearbyView.setOnClickListener {
            self.viewModel.sendNearbyEvent()
            self.showEventDialog()
        }

        paySomeoneView.setOnClickListener {
            self.viewModel.sendPaySomeoneEvent()
            self.showEventDialog()
        }

        requestMoneyView.setOnClickListener {
            self.viewModel.sendRequestMoneyEvent()
            self.showEventDialog()
        }

        searchView.setOnClickListener {
            self.viewModel.sendSearchEvent()
            self.showEventDialog()
        }
    }
}

extension PaymentsVC: UICollectionViewDataSource {
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

extension PaymentsVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == contactsCollectionView {
            viewModel.sendContactsEvent()
            showEventDialog()
        } else if collectionView == payCollectionView {
            navigateSendMoneyVC(contact: viewModel.payContacts[indexPath.row])
            viewModel.sendPaymentTransferEvent(contact: viewModel.payContacts[indexPath.row])
            showEventDialog()
        }
    }
}
