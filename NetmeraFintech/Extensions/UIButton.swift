//
//  UIButton.swift
//  NetmeraFintech
//
//  Copyright (c) 2023 Netmera.
//  @author Initial Code on 13.07.2023.
//

import UIKit

private let buttonPrimaryColor = UIColor(hex: 0x007AFF)

extension UIButton {
    func outLined(borderColor: UIColor = buttonPrimaryColor,
                  borderWidth: CGFloat = 1.0,
                  backgroundColor: UIColor = UIColor.white,
                  cornerRadius: CGFloat = 10.0,
                  textColor: UIColor = buttonPrimaryColor,
                  font: UIFont = Fonts.nunitoSemiBold(size: 16),
                  icon: UIImage? = nil)
    {
        self.borderColor = borderColor
        self.borderWidth = borderWidth
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        setTitleColor(textColor, for: .normal)
        titleLabel?.font = font

        if let icon = icon {
            semanticContentAttribute = .forceRightToLeft
            setImage(icon.withRenderingMode(.alwaysTemplate), for: .normal)
            tintColor = buttonPrimaryColor
            imageView?.contentMode = .scaleAspectFit
            imageEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }
        layoutIfNeeded()
    }

    func filled(borderColor: UIColor = UIColor.white,
                borderWidth: CGFloat = 0.0,
                backgroundColor: UIColor = buttonPrimaryColor,
                cornerRadius: CGFloat = 10.0,
                textColor: UIColor = UIColor.white,
                font: UIFont = Fonts.nunitoSemiBold(size: 16),
                tint: UIColor = buttonPrimaryColor,
                iconWidth: Int = 24,
                iconHeight: Int = 24,
                icon: UIImage? = nil)
    {
        self.borderColor = borderColor
        self.borderWidth = borderWidth
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        setTitleColor(textColor, for: .normal)
        titleLabel?.font = font
        if let icon = icon?.resized(to: CGSize(width: iconWidth, height: iconHeight)) {
            semanticContentAttribute = .forceRightToLeft
            setImage(icon.withRenderingMode(.alwaysTemplate), for: .normal)
            tintColor = tint
            imageView?.contentMode = .scaleAspectFit
            imageEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }
        layoutIfNeeded()
    }

    func setIcon(icon: UIImage? = nil, tint: UIColor, size: Int) {
        if let icon = icon?.resized(to: CGSize(width: size, height: size)) {
            semanticContentAttribute = .forceRightToLeft
            setImage(icon.withRenderingMode(.alwaysTemplate), for: .normal)
            tintColor = tint
            imageView?.contentMode = .scaleAspectFit
            imageEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        }
        layoutIfNeeded()
    }

    func disable() {
        isEnabled = false
        alpha = 0.5
    }

    func enable() {
        isEnabled = true
        alpha = 1
    }
}
