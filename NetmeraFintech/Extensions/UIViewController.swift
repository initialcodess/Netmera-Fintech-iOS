//
//  UIViewController.swift
//  NetmeraFintech
//
//  Created by InitialCode on 17.07.2023.
//

import UIKit

extension UIViewController {
    func showDialog(title: String = "", message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)

        present(alertController, animated: true, completion: nil)
    }

    func showEventDialog(title: String = "", message: String = "Event was sent") {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)

        present(alertController, animated: true, completion: nil)
    }
}
