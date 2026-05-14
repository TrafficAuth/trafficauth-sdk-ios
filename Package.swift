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
            checksum: "c269547510556bf2e0a0a0bc1e0d7e2af1c92a91bdb68dc3e44ea831ee7dc2b4"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.1/TrafficAuthSDK.xcframework.zip",
            checksum: "2ff2cc29a728b0dbb7d9cac0bb65ec836d159ee155fb54e00798df39050923ee"
        )
    ]
)
