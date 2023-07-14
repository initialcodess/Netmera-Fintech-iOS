//
//  NetmeraHelper.swift
//  NetmeraFintech
//
//  Created by InitialCode on 14.07.2023.
//

import NetmeraCore

class NetmeraHelper {
    
    // Request push notification authorization from user by calling the following method in an appropriate place:
    public static func requestNotificationPermission() {
        Netmera.requestPushNotificationAuthorization(for: [.alert, .badge, .sound])
    }
    
    public static func updateUser(user: ImpactFintechUser) {
        var netmeraUser = NMImpactFintechUser()
        if let userName = user.userName {
            netmeraUser.name = userName
        }
        if let userId = user.userId {
            netmeraUser.userId = userId
        }
        if let type = user.type {
            netmeraUser.type = type
        }
        Netmera.updateUser(user: netmeraUser)
    }
}
