// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlueStackAppLovinAdapter",
    products: [
        .library(
            name: "BlueStackAppLovinAdapter",
            targets: ["BlueStackAppLovinAdapter"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "12.6.1"),
        .package(url: "https://github.com/azerion/BlueStackSDK", exact: "4.4.8"),
    ],
    targets: [
        .binaryTarget(name: "BlueStackAppLovinAdapter", path: "BlueStackAppLovinAdapter.xcframework")
    ]
)
