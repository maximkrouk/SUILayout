#
# Be sure to run `pod lib lint SUILayout.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SUILayout'
  s.version          = '3.0.0'
  s.summary          = 'Modern SwiftUI layout DSL'
  s.description      = <<-DESC
Modern SwiftUI layout DSL, inspired by SnapKit.
Keywords: SwiftUI, Layout, Sizing, Sizes, Autoresizing, SnapKit, Swift, Alignment
                       DESC

  s.homepage         = 'https://github.com/maximkrouk/SUILayout'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Maxim Krouk' => 'id.maximkrouk@gmail.com' }
  s.source           = { :git => 'https://github.com/maximkrouk/SUILayout.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/maximkrouk'

  s.ios.deployment_target = '13.0'
  s.source_files = 'Sources/SUILayout/**/*'
  s.frameworks = 'SwiftUI'
  s.swift_version = '5.1'
end
