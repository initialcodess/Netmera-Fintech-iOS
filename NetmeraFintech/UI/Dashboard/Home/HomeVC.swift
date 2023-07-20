//
//  HomeVC.swift
//  NetmeraFintech
//
//  Created by InitialCode on 18.07.2023.
//

import CenteredCollectionView
import UIKit

class HomeVC: UIViewController {
    private let viewModel = HomeViewModel()

    @IBOutlet var cardsCollectionView: UICollectionView!
    @IBOutlet var manageButton: UIButton!
    @IBOutlet var seeAllView: UIView!
    @IBOutlet var settingsView: UIView!
    @IBOutlet var selectedCardNumber: UILabel!
    @IBOutlet var transactionsCollectionView: UICollectionView!

    let cellPercentWidth: CGFloat = 0.7
    var cardsCollectionViewFlowLayout: CenteredCollectionViewFlowLayout!

    private func setupUI() {
        manageButton.filled(cornerRadius: 12, font: Fonts.nunitoSemiBold(size: 13), tint: UIColor.white, iconWidth: 6,
                            iconHeight: 10, icon: UIImage(named: "Chevron_Right")!)

        cardsCollectionViewFlowLayout = cardsCollectionView.collectionViewLayout as? CenteredCollectionViewFlowLayout
        cardsCollectionView.decelerationRate = UIScrollView.DecelerationRate.normal
        cardsCollectionView.delegate = self
        cardsCollectionView.dataSource = self
        cardsCollectionViewFlowLayout.itemSize = CGSize(
            width: view.bounds.width * cellPercentWidth,
            height: view.bounds.height * cellPercentWidth * cellPercentWidth
        )
        cardsCollectionViewFlowLayout.minimumLineSpacing = 20

        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(
            width: transactionsCollectionView.frame.width - 32,
            height: 65
        )
        transactionsCollectionView.collectionViewLayout = layout
        transactionsCollectionView.delegate = self
        transactionsCollectionView.dataSource = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        manageButton.addTarget(self, action: #selector(manageButtonClicked), for: .touchUpInside)

        settingsView.setOnClickListener {
            self.viewModel.sendSettingsEvent()
            self.showEventDialog()
        }
        seeAllView.setOnClickListener {
            self.viewModel.sendSeeAllEvent()
            self.showEventDialog()
        }
    }

    @objc func manageButtonClicked() {
        viewModel.sendManageCardEvent(card: viewModel.cards[cardsCollectionViewFlowLayout.currentCenteredPage!])
        showEventDialog()
    }
}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UIScrollViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        if collectionView == transactionsCollectionView {
            return viewModel.transactions.count
        }
        return viewModel.cards.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == transactionsCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TransactionCollectionViewCell.identifier, for: indexPath) as! TransactionCollectionViewCell
            cell.setup(transaction: viewModel.transactions[indexPath.row], color: viewModel.colors[indexPath.row])
            return cell
        }

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardCollectionViewCell.identifier, for: indexPath) as! CardCollectionViewCell

        cell.setImage(image: UIImage(named: viewModel.cards[indexPath.row].imageName)!)
        return cell
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        if cardsCollectionView === scrollView {
            selectedCardNumber.text = "•••• " + viewModel.cards[cardsCollectionViewFlowLayout.currentCenteredPage!].lastFourDigits
        }
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == transactionsCollectionView {
            viewModel.sendPaymentDetailEvent(index: indexPath.row)
            showEventDialog()
        }
    }
}
