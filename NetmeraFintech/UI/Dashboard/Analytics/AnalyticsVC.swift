//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import NetmeraCore
import UIKit

class ProfileVC: UIViewController {
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var emailTextInput: LabeledTextField!
    @IBOutlet var nameTextInput: LabeledTextField!
    @IBOutlet var lastNameTextInput: LabeledTextField!
    @IBOutlet var birthDateTextInput: LabeledTextField!
    @IBOutlet var phoneTextInput: LabeledTextField!
    @IBOutlet var cityTextInput: LabeledTextField!
    @IBOutlet var companyNameTextInput: LabeledTextField!
    @IBOutlet var companyEmailTextInput: LabeledTextField!
    @IBOutlet var titleTextInput: LabeledTextField!

    private let datePicker = UIDatePicker()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureDatePicker()
        saveButton.filled()
        if let email = UserDefaultsHelper.email {
            emailTextInput.setText(text: email)
        }
        if let name = UserDefaultsHelper.name {
            nameTextInput.setText(text: name)
        }
        if let lastName = UserDefaultsHelper.lastName {
            lastNameTextInput.setText(text: lastName)
        }
        if let birthDate = UserDefaultsHelper.birthDate {
            birthDateTextInput.setText(text: birthDate)
        }
        if let phone = UserDefaultsHelper.phone {
            phoneTextInput.setText(text: phone)
        }
        if let city = UserDefaultsHelper.city {
            cityTextInput.setText(text: city)
        }
        if let companyName = UserDefaultsHelper.companyName {
            companyNameTextInput.setText(text: companyName)
        }
        if let companyEmail = UserDefaultsHelper.companyEmail {
            companyEmailTextInput.setText(text: companyEmail)
        }
        if let title = UserDefaultsHelper.title {
            titleTextInput.setText(text: title)
        }

        saveButton.setOnClickListener {
            self.saveUser()
        }
    }

    private func saveUser() {
        let user = NMImpactFintechUser()
        user.userId = emailTextInput.textField.text
        user.email = emailTextInput.textField.text
        user.name = nameTextInput.textField.text
        user.surname = lastNameTextInput.textField.text
        user.msisdn = phoneTextInput.textField.text
        user.city = cityTextInput.textField.text
        user.companyName = companyNameTextInput.textField.text
        user.companyEmail = companyEmailTextInput.textField.text
        user.title = titleTextInput.textField.text

        if let date = birthDateTextInput.textField.text {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd/MM/yyyy"
            user.dateOfBirth = dateFormatter.date(from: date)
        }

        Netmera.updateUser(user: user)

        UserDefaultsHelper.email(value: emailTextInput.textField.text)
        UserDefaultsHelper.name(value: nameTextInput.textField.text)
        UserDefaultsHelper.lastName(value: lastNameTextInput.textField.text)
        UserDefaultsHelper.birthDate(value: birthDateTextInput.textField.text)
        UserDefaultsHelper.phone(value: phoneTextInput.textField.text)
        UserDefaultsHelper.city(value: cityTextInput.textField.text)
        UserDefaultsHelper.companyName(value: companyNameTextInput.textField.text)
        UserDefaultsHelper.companyEmail(value: companyEmailTextInput.textField.text)
        UserDefaultsHelper.title(value: titleTextInput.textField.text)
        showDialog(message: "Profile was updated")
    }

    private func configureDatePicker() {
        datePicker.datePickerMode = .date
        if #available(iOS 14.0, *) {
            birthDateTextInput.textField.inputView = datePicker
            datePicker.preferredDatePickerStyle = .inline
        }

        datePicker.maximumDate = Date() // Restrict future dates
        datePicker.addTarget(self, action: #selector(datePickerValueChanged(sender:)), for: .valueChanged)
    }

    @objc func datePickerValueChanged(sender: UIDatePicker) {
        // Update birthDateTextField with formatted date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        birthDateTextInput.setText(text: dateFormatter.string(from: sender.date))
    }
}
