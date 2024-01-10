Pod::Spec.new do |s|

s.authors = { 'Azerion' => 'https://www.azerion.com/contact/' }
s.name = 'BlueStackAppLovinAdapter'
s.version = '1.0.0'
s.static_framework = true
s.license = 'MIT'
s.platform = :ios, '13.0'
s.summary = 'BlueStack adapter used for mediation with the AppLovin MAX SDK'
s.homepage = "https://developers.bluestack.app/"
s.swift_version = '5'
s.source_files = 'ApplovinAdapter/BlueStackAppLovinAdapter.xcframework/*/*/Headers/*.{h}'
s.source = { :git => 'https://github.com/azerion/bluestack_mediation_adapter_iOS.git', :tag => "applovin_#{s.version}" }
s.documentation_url = 'https://developers.bluestack.app/ios/mediation-adapters/applovin-adapter-ios'
s.vendored_frameworks = "#{s.name}.xcframework"
s.ios.deployment_target = '13.0'

s.dependency 'BlueStack-SDK/Core', '4.3.0'
s.dependency 'AppLovinSDK'

end
