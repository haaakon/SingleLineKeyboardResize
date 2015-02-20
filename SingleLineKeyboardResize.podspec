#
# Be sure to run `pod lib lint SingleLineKeyboardResize.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SingleLineKeyboardResize"
  s.version          = "0.1.0"
  s.summary          = "A single line of code will make your UITableView or any UIScrollView auto resize when the keyboard appears"
  s.description      = <<-DESC
                       With this non-intrusive UIViewController extension, only a single line of code will make your scrollView auto resize when the keyboard appears. It literally cannot get easier than this, and you don't even need to subclass anything.
                       DESC
  s.homepage         = "https://github.com/haaakon/SingleLineKeyboardResize"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Hakon Bogen" => "hakon.bogen@gmail.com" }
  s.source           = { :git => "https://github.com/haaakon/SingleLineKeyboardResize.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/_haaakon'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'UIViewController+Keyboard.swift'
  s.frameworks = 'UIKit'
end
