Pod::Spec.new do |s|

s.name = 'BlueStackAppLovinAdapter'
s.version = '4.4.81'
s.static_framework = true
s.license = 'MIT'
s.summary = 'BlueStack adapter used for mediation with the AppLovin MAX SDK'
s.platform = :ios, '12.2'
s.homepage = "https://developers.bluestack.app/"
s.authors = { 'Azerion' => 'https://www.azerion.com/contact/' }
s.swift_version = '5'
s.source = { :git => 'https://github.com/azerion/bluestack_mediation_adapter_iOS.git', :tag => "#{s.version}" }
s.documentation_url = 'https://developers.bluestack.app/ios/mediation-adapters/applovin-adapter-ios'
s.vendored_frameworks = "BlueStackAppLovinAdapter.xcframework"
s.ios.deployment_target = '12.2'

s.dependency 'BlueStack-SDK', '4.4.8'
s.dependency 'AppLovinSDK', '12.6.1'

end
