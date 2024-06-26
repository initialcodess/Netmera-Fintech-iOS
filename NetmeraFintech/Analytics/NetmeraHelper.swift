//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import NetmeraCore

class NetmeraHelper {
    private static let NETMERA_API_KEY = "RH9qH4AIng0xmH-dqrh3SYTSU3Kw3OrQpqAkyF-u6YOgwJJt_7n55WtPYT3ak-U_"

    public static func initNetmera() {
        let netmeraParams = NetmeraParams(
            apiKey: NETMERA_API_KEY
        )
        Netmera.initialize(params: netmeraParams)
        Netmera.setLogLevel(.debug) // Options can be .debug, .info, .error, .fault
    }

    // Request push notification authorization from user by calling the following method in an appropriate place:
    public static func requestNotificationPermission() {
        Netmera.requestPushNotificationAuthorization(for: [.alert, .badge, .sound])
    }

    public static func requestLocationPermission() {
        Netmera.requestLocationAuthorization()
    }

    public static func requestAdIdPermission() {
        Netmera.requestAdvertisingAuthorization()
    }

    public static func enableAdId() {
        Netmera.setAuthorizedAdvertisingIdentifier(authorized: true)
    }

    public static func enablePopups() {
        Netmera.setEnabledPopupPresentation(true)
    }

    public static func enableInAppMessages() {
        Netmera.setEnabledInAppMessagePresentation(true)
    }
}
