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
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.7/libEncoderLib.xcframework.zip",
            checksum: "994c1c5ae27b79dd277351ce5e0092fcb520a47c014eebd380dd996be9a6b596"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.7/TrafficAuthSDK.xcframework.zip",
            checksum: "8a584cc6a7c653536351ec7293caf72c0614476e987bcbcf302800e4f2984bf1"
        )
    ]
)
