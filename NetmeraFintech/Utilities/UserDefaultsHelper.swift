//
//  UserDefaultsHelper.swift
//  NetmeraFintech
//
//  Created by InitialCode on 20.07.2023.
//

import Foundation

class UserDefaultsHelper {
    private static let EMAIL_KEY = "email"

    public static func email(value: String) {
        UserDefaults.standard.set(value, forKey: EMAIL_KEY)
    }

    public static func email() -> String? {
        return UserDefaults.standard.object(forKey: EMAIL_KEY) as? String
    }
}
