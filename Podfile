source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'

target 'Carona' do
  use_frameworks!
  
  pod 'ConfigurationProvider'
  pod 'LaunchApplication'
  
  pod 'UIColor_Hex_Swift'
  pod 'NVActivityIndicatorView'
  pod 'GoogleMaps'
  pod 'AppCenter'
  
  target 'CaronaTests' do
    inherit! :search_paths
  end

  target 'CaronaUITests' do
    inherit! :search_paths
  end

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['GCC_WARN_INHIBIT_ALL_WARNINGS'] = 'YES'
        end
    end
end
