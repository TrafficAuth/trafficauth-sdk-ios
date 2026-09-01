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
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.8/libEncoderLib.xcframework.zip",
            checksum: "8b8a8706117b991d2386f8ec320d60dd9d5fded1081e3b25fbce2ca4cfc8ffad"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.8/TrafficAuthSDK.xcframework.zip",
            checksum: "47c0d0212d7ca1d8d6008354d9b99b06791e1482b56ef07084d0a1c612033660"
        )
    ]
)
