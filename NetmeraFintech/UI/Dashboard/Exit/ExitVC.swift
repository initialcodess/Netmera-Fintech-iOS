//
//  ExitVC.swift
//  NetmeraFintech
//
//  Copyright (c) 2023 Netmera.
//  @author Initial Code on 18.07.2023.
//

import UIKit

class ExitVC: UIViewController {
    override func viewDidLoad() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "OnboardingVC")
        viewController.modalPresentationStyle = .overFullScreen
        present(viewController, animated: true)
    }
}
