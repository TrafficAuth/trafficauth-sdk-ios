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
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.6/libEncoderLib.xcframework.zip",
            checksum: "3fb0b84cbec52f80a8c4ef318ca2620aa64d7a4a9dd6d679976d614011b3ae80"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.6/TrafficAuthSDK.xcframework.zip",
            checksum: "437b58adf462e3fd0699ec1c9cd6b5d617d11709776fb96547f6b967cc592c35"
        )
    ]
)
