Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '9.0'
s.name = "FireworksKit"
s.summary = "Special effects for iOS."
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Luca Angeletti" => "luca.angeletti@gmail.com" }

# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/appzYourLife"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/appzYourLife/FireworksKit.git", :tag => "#{s.version}"}


# 7
s.framework = "UIKit"

# 8
s.source_files = "FireworksKit/**/*.{swift}"

# 9
s.resources = "FireworksKit/**/*.{png,jpeg,jpg,storyboard,xib,sks,xcassets}"
end
