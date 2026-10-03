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
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.1.0/libEncoderLib.xcframework.zip",
            checksum: "95aec8750b1f2bb40ddda4f8c68ed20d4849238112ce3720a1a616d10bea1538"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.1.0/TrafficAuthSDK.xcframework.zip",
            checksum: "38f43dc3ef2c92a2bb9ab3c7e89761e1e4208d3955742d29fb5c6a0979fdd82f"
        )
    ]
)
