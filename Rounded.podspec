#
# Be sure to run `pod lib lint Rounded.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Rounded'
  s.version          = '0.1.0'
  s.summary          = 'Small Swift library which contains subclasses for standard iOS controls with a possibility to add rounded corners and borders.'
  
  s.description      = <<-DESC
  Small Swift library which contains subclasses for standard iOS controls with a possibility to add rounded corners and borders.
                       DESC
  s.homepage         = 'https://github.com/serhii-londar/Rounded'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'serhii-londar' => 'serhii.londar@gmail.com' }
  s.source           = { :git => 'https://github.com/serhii-londar/Rounded.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Rounded/Classes/**/*'
  s.frameworks = 'UIKit'
end
