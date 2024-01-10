Pod::Spec.new do |s|

s.authors = 'Azerion'
s.name = 'BlueStackAppLovinAdapter'
s.version = '1.0.0'
s.static_framework = true
s.license = 'MIT'
s.platform = :ios, '13.0'
s.summary = 'BlueStack adapter used for mediation with the AppLovin MAX SDK'
s.homepage = "https://developers.bluestack.app/"
s.swift_version = '5'
#s.source_files = 'BlueStackAppLovinAdapter.xcframework/*/*/Headers/*.{h}'
s.source_files = ["BlueStackAppLovinAdapter/*.{h,m,swift}"]

s.source = { :git => 'https://github.com/azerion/BlueStackDFPMediationAdapter.git', :tag => "#{s.version}" }

s.vendored_frameworks = "BlueStackAppLovinAdapter.xcframework"

s.dependency 'BlueStack-SDK/Core'
s.dependency 'AppLovinSDK'

s.pod_target_xcconfig =
{
  'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64',
  'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 arm64e armv7 armv7s',
  'VALID_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e x86_64',
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
}

end
