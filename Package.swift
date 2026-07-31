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
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.7-rc1/libEncoderLib.xcframework.zip",
            checksum: "5d1250ca204aabaced16ed7fa8d8d614e0eca0320c6bec39e043cba5109e65b9"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.7-rc1/TrafficAuthSDK.xcframework.zip",
            checksum: "cedc9f97721ebd0a3209a5b99abaa5e131d9177f83490f02c1ca2459a2945bca"
        )
    ]
)
