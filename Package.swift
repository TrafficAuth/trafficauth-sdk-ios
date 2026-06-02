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
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.4/libEncoderLib.xcframework.zip",
            checksum: "dd8d482ceb6141fa237350a5a8a228ed6c1650e24360caf37f4b0d4f8b0ef89f"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.4/TrafficAuthSDK.xcframework.zip",
            checksum: "6041b4dd275438495062959dabbb7f2fc76589a79bef902d44051bed7f6d6560"
        )
    ]
)
