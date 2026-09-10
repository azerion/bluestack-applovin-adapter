Pod::Spec.new do |s|

s.authors = 'Azerion'
s.name = 'BlueStackAppLovinAdapter'
s.version = '6.0.3'
s.static_framework = true
s.license = 'MIT'
s.summary = 'BlueStack adapter used for mediation with the AppLovin MAX SDK'
s.platform = :ios, '13.0'
s.homepage = "https://developers.bluestack.app/"
s.swift_version = '5'
s.source_files = ["BlueStackAppLovinAdapter.xcframework/*/*/Headers/*.{h,m,swift}"]
s.source = { :git => 'https://github.com/azerion/bluestack-applovin-adapter.git', :tag => "#{s.version}" }
s.documentation_url = 'https://developers.bluestack.app/ios/mediation/primairy/supported-networks#applovin'
s.vendored_frameworks = "BlueStackAppLovinAdapter.xcframework"
s.ios.deployment_target = '13.0'

s.dependency 'BlueStack-SDK', '>=6.0.3', '< 6.1.0'
s.dependency 'AppLovinSDK', '13.6.4'

s.pod_target_xcconfig =
{
  'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64',
  'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 arm64e armv7 armv7s',
  'VALID_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e x86_64',
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
}

end
