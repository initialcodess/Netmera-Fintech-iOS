//  Copyright (c) 2023 Netmera.
//  @author Initial Code

import FirebaseCore
import IQKeyboardManagerSwift
import NetmeraAdvertisingId
import NetmeraAnalytic
import NetmeraLocation
import NetmeraNotification
import NetmeraNotificationInbox
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        IQKeyboardManager.shared.enable = true

        NetmeraHelper.initNetmera()

        FirebaseApp.configure()

        UNUserNotificationCenter.current().delegate = self

        return true
    }

    // MARK: UNUserNotificationCenterDelegate

    func userNotificationCenter(_: UNUserNotificationCenter,
                                willPresent _: UNNotification,
                                withCompletionHandler _: @escaping (UNNotificationPresentationOptions) -> Void)
    {
        //
    }

    func userNotificationCenter(_: UNUserNotificationCenter,
                                didReceive _: UNNotificationResponse,
                                withCompletionHandler _: @escaping () -> Void)
    {
        //
    }

    // MARK: UISceneSession Lifecycle

    func application(_: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options _: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_: UIApplication, didDiscardSceneSessions _: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}
