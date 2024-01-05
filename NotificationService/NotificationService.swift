//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import NetmeraNotificationServiceExtension
import UserNotifications

class NotificationService: NotificationServiceExtension {
    override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void) {
        super.didReceive(request, withContentHandler: contentHandler)
    }

    override func serviceExtensionTimeWillExpire() {
        super.serviceExtensionTimeWillExpire()
    }
}
