# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'
use_frameworks!

target 'NetmeraFintech' do
  # Comment the next line if you don't want to use dynamic frameworks
  # Pods for NetmeraFintech
  
  # Netmera Pods
  pod "NetmeraCore", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraAnalytic", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraAnalyticAutotracking", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraNotification", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraNotificationCore", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraAdvertisingId", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraLocation", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraGeofence", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraNotificationInbox", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  
  # Firebase Pods
  pod 'FirebaseAnalytics'
  
  pod "ToastViewSwift"
  pod "CenteredCollectionView"
  pod 'IQKeyboardManagerSwift'
end

target 'NotificationService' do
  # Netmera Pods
  pod "NetmeraNotificationServiceExtension", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
end

target 'NotificationViewController' do
  # Netmera Pods
  pod "NetmeraNotificationContentExtension", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
      end
  end
end
