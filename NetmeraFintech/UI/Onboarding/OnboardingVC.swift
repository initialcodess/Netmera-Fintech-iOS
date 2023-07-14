//
//  OnboardingVC.swift
//  NetmeraFintech
//
//  Created by InitialCode on 13.07.2023.
//

import UIKit
import NetmeraCore

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
        if let email = emailTextField.text, !email.isEmpty {
            viewModel.updateUserAndsendSignInEvent(email: email)
            DialogUtils.showDialog(viewController: self, message: "The user update is completed and the sign-In event was sent.")
        } else {
            DialogUtils.showDialog(viewController: self, message: "Please enter an email.")
        }
    }

    @objc func getStartedButtonClicked() {
        viewModel.sendGetStartedEvent()
    }

}
