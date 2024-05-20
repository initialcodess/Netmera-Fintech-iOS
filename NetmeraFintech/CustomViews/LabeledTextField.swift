import UIKit

class LabeledTextField: UIView, UITextFieldDelegate {
    @IBInspectable var placeHolderText: String! {
        get {
            textField.placeholder
        }
        set {
            textField.placeholder = newValue
            label.text = " " + (textField.placeholder ?? "") + " "
            initialPlaceHolder = textField.placeholder ?? ""
        }
    }

    @IBInspectable var showNumberPadOnly: String! {
        get {
            "0"
        }
        set {
            if newValue == "1" {
                textField.keyboardType = .numbersAndPunctuation
                textField.autocorrectionType = .no
            } else {
                textField.keyboardType = .default
            }
        }
    }

    // MARK: - Properties

    let textField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.borderWidth = 0.6
        textField.borderColor = .lightGray
        textField.cornerRadius = 8
        textField.font = .systemFont(ofSize: 14)
        textField.autocapitalizationType = .none
        return textField
    }()

    private let label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.textColor = Color.blue
        label.isHidden = true
        return label
    }()

    private var initialPlaceHolder = ""

    func setText(text: String) {
        textField.text = text
        textFieldDidBeginEditing(textField)
        textFieldDidEndEditing(textField)
    }

    // MARK: - Initialization

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
        setupConstraints()
        textField.delegate = self
        label.backgroundColor = .white
    }

    // MARK: - Setup

    private func setupViews() {
        addSubview(textField)
        addSubview(label)
    }

    private func setupConstraints() {
        textField.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            textField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),

            label.bottomAnchor.constraint(equalTo: textField.topAnchor, constant: 8),
            label.leadingAnchor.constraint(equalTo: textField.leadingAnchor, constant: 8),
        ])
    }

    // MARK: - UITextFieldDelegate

    func textFieldDidBeginEditing(_: UITextField) {
        label.isHidden = false
        textField.borderWidth = 1.2
        textField.borderColor = Color.blue
        textField.placeholder = ""
        label.textColor = Color.blue
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text?.isEmpty ?? true {
            label.isHidden = true
        }
        textField.placeholder = initialPlaceHolder
        textField.borderColor = .lightGray
        label.textColor = .lightGray
        textField.borderWidth = 0.6
    }
}
