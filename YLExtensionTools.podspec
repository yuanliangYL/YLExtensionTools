#
# Be sure to run `pod lib lint YLExtensionTools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YLExtensionTools'
  s.version          = '0.1.1'
  s.summary          = 'YLExtensionTools are Some of the extensions used in swift development.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        YLExtensionTools are Some of the extensions used in swift development. Currently version 0.1.0, including extensions to the color class.
                       DESC

  s.homepage         = 'https://github.com/yuanliangYL/YLExtensionTools'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'AlbertYuan' => 'yuanliangios@163.com' }
  s.source           = { :git => 'https://github.com/yuanliangYL/YLExtensionTools.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_versions = '5.0'

  s.source_files = 'YLExtensionTools/Classes/**/*'
  
  # s.resource_bundles = {
  #   'YLExtensionTools' => ['YLExtensionTools/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
