#
# Be sure to run `pod lib lint gtfsplashscreen.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'gtfsplashscreen'
  s.version          = '0.1.0'
  s.summary          = 'Show a splash screen using your app\'s already defined image.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Show a splash screen using your app's already defined image with a loading indicator while performing tasks in background.
                       DESC

  s.homepage         = 'https://github.com/gtfunes/gtfsplashscreen'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gaston Funes' => 'me@gtfunes.com' }
  s.source           = { :git => 'https://github.com/gtfunes/gtfsplashscreen.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'gtfsplashscreen/Classes/**/*'
  
  # s.resource_bundles = {
  #   'gtfsplashscreen' => ['gtfsplashscreen/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
