// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TrafficAuthSDK",
    platforms: [
        .iOS(.v17)
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
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.1.1/libEncoderLib.xcframework.zip",
            checksum: "bcd075f2ad3bede29c15964cc23a114956e08fa3459e873f71ff339562eaaf0b"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.1.1/TrafficAuthSDK.xcframework.zip",
            checksum: "ae2411f98190aa81bdeb8bc98b1eb36545ede536c749af86c716cc1fdda9af94"
        )
    ]
)
