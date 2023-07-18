# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'NetmeraFintech' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  pod 'IQKeyboardManagerSwift'
  # Pods for NetmeraFintech
  
  # Netmera Pods
  pod "NetmeraCore", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraAnalytic", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraAnalyticAutotracking", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraNotification", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraAdvertisingId", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraLocation", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraGeofence", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraNotificationCore", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  pod "NetmeraNotificationInbox", :git => "https://github.com/Netmera/swift-sdk", :branch => "release/temp"
  
  # Firebase Pods
  pod 'FirebaseAnalytics'
  
  post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
      config.build_settings["BUILD_LIBRARY_FOR_DISTRIBUTION"] = "YES"
    end
  end
end
