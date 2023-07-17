//
//  DialogUtils.swift
//  NetmeraFintech
//
//  Created by InitialCode on 14.07.2023.
//

import UIKit

class DialogUtils {
    public static func showDialog(viewController: UIViewController, title: String = "", message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)

        viewController.present(alertController, animated: true, completion: nil)
    }

    public static func showEventDialog(viewController: UIViewController, title: String = "", message: String = "Event was sent") {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)

        viewController.present(alertController, animated: true, completion: nil)
    }
}
