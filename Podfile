inhibit_all_warnings!

use_frameworks!

target 'ToDoList' do
  platform :ios, '11.0'

  pod 'LKAlertController'
  pod 'ActionSheetPicker-3.0', :git => 'https://github.com/rursache/ActionSheetPicker-3.0'
  pod 'IceCream', :git => 'https://github.com/rursache/IceCream.git'
  pod 'UnderKeyboard'
  pod 'ActiveLabel'
  pod 'Realm'
  pod 'RealmSwift'
  pod 'RSTextViewMaster'
  pod 'AcknowList'
  pod 'Loaf'
  pod 'Robin'
  pod 'Fabric'
  pod 'Crashlytics'
  pod 'ImageViewer.swift'
  pod 'BulletinBoard'

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    if ['AcknowList', 'UnderKeyboard', 'ImpressiveNotifications'].include? target.name
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '4.2'
      end
    end
  end
end
