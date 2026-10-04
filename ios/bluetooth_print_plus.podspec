#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint bluetooth_print_plus.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'bluetooth_print_plus'
  s.version          = '2.4.5'
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.static_framework = true
  s.dependency 'Flutter'
  # GSDK 0.0.7 vendored as xcframework (adds arm64 iOS Simulator slice)
  s.vendored_frameworks = 'Frameworks/GSDK.xcframework'
  s.frameworks = 'Foundation', 'UIKit', 'CoreBluetooth'
  s.platform = :ios, '11.0'
  s.static_framework = true

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
