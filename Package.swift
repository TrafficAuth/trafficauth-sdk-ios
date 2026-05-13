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
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.0/libEncoderLib.xcframework.zip",
            checksum: "6fdb04f5eb16e0c56cea0d116bbbb3e230a40f9129a1f1cb8c6655168c1abc29"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.0/TrafficAuthSDK.xcframework.zip",
            checksum: "4f250a45fbc2eacd304a4096f2806d78ead881f6591574d1ba42a135aef041a9"
        )
    ]
)
