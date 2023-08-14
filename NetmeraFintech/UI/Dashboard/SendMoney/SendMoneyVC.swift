//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import UIKit

class SendMoneyVC: UIViewController {
    private let viewModel = SendMoneyViewModel()

    @IBOutlet var accountEndingDigits: UILabel!
    @IBOutlet var addMessageView: UIView!
    @IBOutlet var amount: UITextField!
    @IBOutlet var backView: UIView!
    @IBOutlet var changeButton: UIButton!
    @IBOutlet var image: UIImageView!
    @IBOutlet var imageContainer: UIView!
    @IBOutlet var imageNameLetter: UILabel!
    @IBOutlet var messageTextView: UITextView!
    @IBOutlet var name: UILabel!
    @IBOutlet var sendMoneyButton: UIButton!

    var contact: Contact!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let picture = contact.image {
            image.image = picture
        } else {
            imageNameLetter.isHidden = false
            image.isHidden = true
            imageNameLetter.text = contact.name.first?.uppercased()
        }

        name.text = "\(contact.name!) \(contact.lastName!)"
        accountEndingDigits.text = "Account ending in \(contact.lastFourDigit!)"

        addMessageView.setOnClickListener {
            self.messageTextView.becomeFirstResponder()
        }

        backView.setOnClickListener {
            self.dismiss(animated: true)
        }

        changeButton.setOnClickListener {
            self.viewModel.sendChangeAccountEvent()
            self.showEventDialog()
        }

        sendMoneyButton.setOnClickListener {
            if let amount = self.amount.text, !amount.isEmpty, amount != "0.00" {
                self.viewModel.sendMoneySendEvent(amount: amount, message: self.messageTextView.text)
                self.dismiss(animated: true) {
                    self.showEventDialog()
                }
            } else {
                self.showToastMessage(message: "You need to enter an amount")
            }
        }

        sendMoneyButton.filled()
        changeButton.filled(backgroundColor: UIColor(hex: 0x747480, alpha: 0.08), cornerRadius: 12, textColor: UIColor.black, font: Fonts.nunitoRegular(size: 13), tint: UIColor.black, iconWidth: 6, iconHeight: 10, icon: UIImage(named: "Chevron_Right"))

        amount.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }

    @objc func textFieldDidChange(_ textField: UITextField) {
        sendMoneyButton.setTitle("Send " + String(format: "$%.2f", Float(textField.text ?? "0.0") ?? 0.0), for: .normal)
    }
}
