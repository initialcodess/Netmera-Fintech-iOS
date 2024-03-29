//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import Foundation

class UserDefaultsHelper {
    private static let EMAIL_KEY = "email"

    public static func email(value: String) {
        UserDefaults.standard.set(value, forKey: EMAIL_KEY)
    }

    public static var email: String? {
        return UserDefaults.standard.object(forKey: EMAIL_KEY) as? String
    }
}
