#
# Be sure to run `pod lib lint SUILayout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SUILayout'
  s.version          = '2.0.0'
  s.summary          = 'Modern SwiftUI layout DSL'
  s.description      = <<-DESC
Modern SwiftUI layout DSL, inspired by SnapKit.
                       DESC

  s.homepage         = 'https://github.com/mx-Cat/SUILayout'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mx-Cat' => 'id.maximkrouk@gmail.com' }
  s.source           = { :git => 'https://github.com/mx-Cat/SUILayout.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/mxcat_'

  s.ios.deployment_target = '13.0'
  s.source_files = 'SUILayout/Classes/**/*'
  s.frameworks = 'SwiftUI'
  s.swift_version = '5.1'
end
