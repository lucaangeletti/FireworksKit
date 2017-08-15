Pod::Spec.new do |s|


s.platform = :ios
s.ios.deployment_target = '9.0'
s.name = "FireworksKit"
s.summary = "Special effects for iOS."
s.requires_arc = true

s.version = "0.1.0"
s.license = { :type => "MIT", :file => "LICENSE" }
s.author = { "Luca Angeletti" => "appzyourlife@gmail.com" }
s.homepage = "https://github.com/lucaangeletti"
s.source = { :git => "https://github.com/lucaangeletti/FireworksKit.git", :tag => "#{s.version}"}
s.framework = "UIKit"
s.source_files = "FireworksKit/**/*.{swift}"
s.resources = "FireworksKit/**/*.{png,jpeg,jpg,storyboard,xib,sks,xcassets}"
end
