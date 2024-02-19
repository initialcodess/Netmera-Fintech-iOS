# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'
use_frameworks!

target 'NetmeraFintech' do
  # Comment the next line if you don't want to use dynamic frameworks
  # Pods for NetmeraFintech
  
  # Netmera Pods
  pod "NetmeraAnalytic"
  pod "NetmeraAnalyticAutotracking"
  pod "NetmeraNotification"
  pod "NetmeraNotificationCore"
  pod "NetmeraAdvertisingId"
  pod "NetmeraLocation"
  pod "NetmeraGeofence"
  pod "NetmeraNotificationInbox"
  
  # Firebase Pods
  pod 'FirebaseAnalytics'
  
  pod "ToastViewSwift", "1.3.1"
  pod "CenteredCollectionView"
  pod 'IQKeyboardManagerSwift'
end

target 'NotificationService' do
  # Netmera Pods
  pod "NetmeraNotificationServiceExtension"
end

target 'NotificationViewController' do
  # Netmera Pods
  pod "NetmeraNotificationContentExtension"
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
      end
  end
  installer.aggregate_targets.each do |target|
    target.xcconfigs.each do |variant, xcconfig|
      xcconfig_path = target.client_root + target.xcconfig_relative_path(variant)
      IO.write(xcconfig_path, IO.read(xcconfig_path).gsub("DT_TOOLCHAIN_DIR", "TOOLCHAIN_DIR"))
    end
  end
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      if config.base_configuration_reference.is_a? Xcodeproj::Project::Object::PBXFileReference
        xcconfig_path = config.base_configuration_reference.real_path
        IO.write(xcconfig_path, IO.read(xcconfig_path).gsub("DT_TOOLCHAIN_DIR", "TOOLCHAIN_DIR"))
      end
    end
  end
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
    end
  end
end

