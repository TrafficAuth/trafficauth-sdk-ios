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
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.2.0/libEncoderLib.xcframework.zip",
            checksum: "4b86deef07266f1cd17897b61a672e330b24873a47b0c49545eee498d3d36759"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.2.0/TrafficAuthSDK.xcframework.zip",
            checksum: "cf6e63b9f9322d35661d5d34a03bb18c18f07bda2f8f465b2ca82d495fdc6bb9"
        )
    ]
)
