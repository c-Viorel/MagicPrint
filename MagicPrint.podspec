#
# Be sure to run `pod lib lint MagicPrint.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MagicPrint'
  s.version          = '0.1.1'
  s.summary          = 'Magic is the best alternative of print. It allows you to write in console more meaningfull logs'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
Magic is the best alternative of print. It allows you to write in console more meaningfull logs.
You have available thise methods to print messages into console:
magicVerbose(<#T##object: T##T#>)
magicMessage(<#T##object: T##T#>)
magicInfo(<#T##object: T##T#>)
magicWarning(<#T##object: T##T#>)
magicWarning(<#T##object: T##T#>)
                       DESC

  s.homepage         = 'https://github.com/c-Viorel/MagicPrint'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Viorel Porumbescu' => 'viorel@minglebit.com' }
  s.source           = { :git => 'https://github.com/c-viorel/MagicPrint.git', :tag => s.version.to_s }
  s.social_media_url = 'https://resume.viorelporumbescu.tech'

  s.platform = :osx
  s.osx.deployment_target = "10.10"

  s.source_files = 'MagicPrint/Classes/**/*'
  s.swift_version = '5.0'

  # s.resource_bundles = {
  #   'MagicPrint' => ['MagicPrint/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'Cocoa'
  # s.dependency 'AFNetworking', '~> 2.3'
end
