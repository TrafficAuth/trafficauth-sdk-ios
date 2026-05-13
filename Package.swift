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
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.1-rc1/libEncoderLib.xcframework.zip",
            checksum: "6fdb04f5eb16e0c56cea0d116bbbb3e230a40f9129a1f1cb8c6655168c1abc29"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.1-rc1/TrafficAuthSDK.xcframework.zip",
            checksum: "bd22631d68361a0d0adf4dd390e60999a82402117b41de5eed7d6522ae619406"
        )
    ]
)
