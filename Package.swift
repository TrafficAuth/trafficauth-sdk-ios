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
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.5/libEncoderLib.xcframework.zip",
            checksum: "090249508fdd841e9c4fb604d384de96d385fa937c3ee3650bfc491498b9e96a"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.5/TrafficAuthSDK.xcframework.zip",
            checksum: "b31f9dbbfff9833e3f5848ec653d3654d7375c3635f7abe547af92a458b009e4"
        )
    ]
)
