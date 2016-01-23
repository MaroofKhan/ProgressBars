Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "ProgressBars"
s.summary = "Progress bar for iOS"
s.requires_arc = true

# 2
s.version = "0.0.1"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Muhammad Maroof Khan" => "maroof-khan@live.com" }


# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/MaroofKhan/ProgressBars"



# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/MaroofKhan/ProgressBars.git", :tag => "#{s.version}"}

# 7
s.framework = "UIKit"

# 8
s.source       = { :git => "https://github.com/MaroofKhan/ProgressBars.git", :commit => "474bc51cb302c678bd391ec429c454ad978161d9" }
s.source_files = "ProgressBar/**/*.{swift}"

end