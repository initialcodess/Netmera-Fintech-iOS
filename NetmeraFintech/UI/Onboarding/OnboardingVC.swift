//  Copyright (c) 2023 Netmera.
//  @author Initial Code

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

        if let email = UserDefaultsHelper.email {
            emailTextField.text = email
        }

        Netmera.setEnabledPopupPresentation(true)
        Netmera.setEnabledInAppMessagePresentation(true)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        NetmeraHelper.requestNotificationPermission()
        DeeplinkHandler.checkIfWaitingHandleExists()
    }

    @objc func signInButtonClicked() {
        var message = "Please enter an email."
        if let email = emailTextField.text, !email.isEmpty {
            viewModel.updateUserAndSendSignInEvent(email: email)
            message = "The user update is completed and the sign-In event was sent."
            UserDefaultsHelper.email(value: email)
        }
        showDialog(message: message)
    }

    @objc func getStartedButtonClicked() {
        viewModel.sendGetStartedEvent()
        showEventDialog()
    }
}
