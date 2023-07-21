//
//  UIView.swift
//  NetmeraFintech
//
//  Created by InitialCode on 13.07.2023.
//

import UIKit

class ClickListener: UITapGestureRecognizer {
    var onClick: (() -> Void)?
}

@IBDesignable extension UIView {
    @IBInspectable var borderColor: UIColor? {
        set {
            layer.borderColor = newValue?.cgColor
        }
        get {
            guard let color = layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: color)
        }
    }

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
            clipsToBounds = newValue > 0
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var shadow: CGFloat {
        set {
            layer.shadowColor = UIColor.gray.cgColor
            layer.shadowOffset = CGSize(width: 0, height: newValue)
            layer.shadowOpacity = 0.5
            layer.shadowRadius = newValue
            clipsToBounds = false
        }
        get {
            return layer.shadowRadius
        }
    }

    func setOnClickListener(action: @escaping () -> Void) {
        let tapRecogniser = ClickListener(target: self, action: #selector(onViewClicked(sender:)))
        tapRecogniser.onClick = action
        addGestureRecognizer(tapRecogniser)
    }

    @objc func onViewClicked(sender: ClickListener) {
        if let onClick = sender.onClick {
            onClick()
        }
    }
}
