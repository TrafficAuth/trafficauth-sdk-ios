// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TrafficAuthSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "TrafficAuthSDK",
            targets: ["TrafficAuthSDK", "libEncoderLib"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "libEncoderLib",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.1/libEncoderLib.xcframework.zip",
            checksum: "94947d4b789ba9819bcc86b638f2b244844ed9ebd60561c64555601de9988bdf"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.1/TrafficAuthSDK.xcframework.zip",
            checksum: "1d2fe3b337f1b0d31b41a4398f273737b77fae39240895e2c9b7f1b31bdd05e0"
        )
    ]
)
