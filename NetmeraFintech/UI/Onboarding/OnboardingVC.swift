//
//  OnboardingVC.swift
//  NetmeraFintech
//
//  Created by InitialCode on 13.07.2023.
//

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
    }
}
