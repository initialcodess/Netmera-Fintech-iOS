//
//  UIViewController.swift
//  NetmeraFintech
//
//  Copyright (c) 2023 Netmera.
//  @author Initial Code on 17.07.2023.
//

import SwiftMessages
import UIKit

extension UIViewController {
    func showDialog(title: String = "", message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)

        present(alertController, animated: true, completion: nil)
    }

    func showEventDialog() {
        let view = MessageView.viewFromNib(layout: .cardView)
        var config = SwiftMessages.Config()
        config.duration = .seconds(seconds: 0.3)
        view.configureTheme(.success)
        view.configureDropShadow()
        view.configureContent(title: "", body: "Event was Sent", iconText: "\t")
        view.titleLabel?.font = Fonts.nunitoSemiBold(size: 16)
        view.button?.isHidden = true
        view.layoutMarginAdditions = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        SwiftMessages.show(config: config, view: view)
    }
}
