//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import ToastViewSwift
import UIKit

extension UIViewController {
    func showDialog(title: String = "", message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)

        present(alertController, animated: true, completion: nil)
    }

    func showEventDialog() {
        showToastMessage(message: "Event was Sent")
    }

    func showToastMessage(message: String) {
        let config = ToastConfiguration(
            direction: .bottom,
            autoHide: true,
            enablePanToClose: true,
            displayTime: 0.5,
            animationTime: 0.2,
            enteringAnimation: .fade(alphaValue: 0.5),
            exitingAnimation: .fade(alphaValue: 0.0)
        )
        let toast = Toast.text(message, config: config)
        toast.show()
    }
}
