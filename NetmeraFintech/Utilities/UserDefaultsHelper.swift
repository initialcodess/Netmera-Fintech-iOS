//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import Foundation

class UserDefaultsHelper {
    private static let EMAIL_KEY = "email"
    private static let NAME_KEY = "name"
    private static let LAST_NAME_KEY = "lastname"
    private static let BIRTH_DATE_KEY = "birthdate"
    private static let PHONE_KEY = "phone"
    private static let CITY_KEY = "city"
    private static let COMPANY_NAME_KEY = "company_name"
    private static let COMPANY_EMAIL_KEY = "company_email"
    private static let TITLE_KEY = "title"

    public static func email(value: String?) {
        UserDefaults.standard.set(value, forKey: EMAIL_KEY)
    }

    public static var email: String? {
        return UserDefaults.standard.object(forKey: EMAIL_KEY) as? String
    }

    public static func name(value: String?) {
        UserDefaults.standard.set(value, forKey: NAME_KEY)
    }

    public static var name: String? {
        return UserDefaults.standard.object(forKey: NAME_KEY) as? String
    }

    public static func lastName(value: String?) {
        UserDefaults.standard.set(value, forKey: LAST_NAME_KEY)
    }

    public static var lastName: String? {
        return UserDefaults.standard.object(forKey: LAST_NAME_KEY) as? String
    }

    public static func birthDate(value: String?) {
        UserDefaults.standard.set(value, forKey: BIRTH_DATE_KEY)
    }

    public static var birthDate: String? {
        return UserDefaults.standard.object(forKey: BIRTH_DATE_KEY) as? String
    }

    public static func phone(value: String?) {
        UserDefaults.standard.set(value, forKey: PHONE_KEY)
    }

    public static var phone: String? {
        return UserDefaults.standard.object(forKey: PHONE_KEY) as? String
    }

    public static func city(value: String?) {
        UserDefaults.standard.set(value, forKey: CITY_KEY)
    }

    public static var city: String? {
        return UserDefaults.standard.object(forKey: CITY_KEY) as? String
    }

    public static func companyName(value: String?) {
        UserDefaults.standard.set(value, forKey: COMPANY_NAME_KEY)
    }

    public static var companyName: String? {
        return UserDefaults.standard.object(forKey: COMPANY_NAME_KEY) as? String
    }

    public static func companyEmail(value: String?) {
        UserDefaults.standard.set(value, forKey: COMPANY_EMAIL_KEY)
    }

    public static var companyEmail: String? {
        return UserDefaults.standard.object(forKey: COMPANY_EMAIL_KEY) as? String
    }

    public static func title(value: String?) {
        UserDefaults.standard.set(value, forKey: TITLE_KEY)
    }

    public static var title: String? {
        return UserDefaults.standard.object(forKey: TITLE_KEY) as? String
    }
}
