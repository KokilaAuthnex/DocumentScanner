platform :ios, '13.0'

target 'DocumentScanner' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for DocumentScanner
 

end

post_install do |installer|

  installer.generated_projects.each do |project|
    project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
      end
    end
  end

installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
        config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
        end
    end
end
