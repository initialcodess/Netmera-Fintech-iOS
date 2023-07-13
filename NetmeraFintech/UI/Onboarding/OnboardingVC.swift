//
//  OnboardingVC.swift
//  NetmeraFintech
//
//  Created by InitialCode on 13.07.2023.
//

import UIKit

class OnboardingVC: UIViewController {
    private let viewModel = OnboardingViewModel()
    @IBOutlet var headerLabel: UILabel!
    @IBOutlet var getStartedButton: UIButton!
    @IBOutlet var signInButton: UIButton!
    @IBOutlet var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerLabel.attributedText = viewModel.getHeaderText()
        getStartedButton.filled()
        signInButton.outLined()
    }
}
