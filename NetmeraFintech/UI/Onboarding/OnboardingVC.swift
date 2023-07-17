//
//  OnboardingVC.swift
//  NetmeraFintech
//
//  Created by InitialCode on 13.07.2023.
//

import NetmeraCore
import UIKit

class OnboardingVC: UIViewController {
    private let viewModel = OnboardingViewModel()

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var getStartedButton: UIButton!
    @IBOutlet var headerLabel: UILabel!
    @IBOutlet var signInButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        headerLabel.attributedText = viewModel.getHeaderText()
        getStartedButton.filled()
        signInButton.outLined()

        signInButton.addTarget(self, action: #selector(signInButtonClicked), for: .touchUpInside)
        getStartedButton.addTarget(self, action: #selector(getStartedButtonClicked), for: .touchUpInside)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        NetmeraHelper.requestNotificationPermission()
    }

    @objc func signInButtonClicked() {
        var message = "Please enter an email."
        if let email = emailTextField.text, !email.isEmpty {
            viewModel.updateUserAndSendSignInEvent(email: email)
            message = "The user update is completed and the sign-In event was sent."
        }
        DialogUtils.showDialog(viewController: self, message: message)
    }

    @objc func getStartedButtonClicked() {
        viewModel.sendGetStartedEvent()
        DialogUtils.showEventDialog(viewController: self)
    }
}
