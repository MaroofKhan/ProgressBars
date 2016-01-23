
Pod::Spec.new do |s|

  s.name         = "ProgressBars"
  s.version      = "0.1.0"
  s.summary      = "Progress bars for iOS"

  s.homepage     = "https://github.com/MaroofKhan/ProgressBars"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "MaroofKhan" => "maroof-khan@live.com" }
  s.social_media_url   = "https://twitter.com/_maroofkhan"
 
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/MaroofKhan/ProgressBars.git", :tag => "0.1.0" }


  s.source_files  = "*.{swift}"
  s.framework  = "UIKit"
  s.requires_arc = true

end
