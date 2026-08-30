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
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.8-rc1/libEncoderLib.xcframework.zip",
            checksum: "9f6b96da4e409dc7c5ea737b3fc6b5155a305a2e0d6ad7e04bce86e24051b10c"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.8-rc1/TrafficAuthSDK.xcframework.zip",
            checksum: "4947c344ebbadf0668b9f30f73e23f550575abba2f895ac3835159ae29cdce48"
        )
    ]
)
