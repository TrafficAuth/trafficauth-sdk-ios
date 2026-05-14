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
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.1/libEncoderLib.xcframework.zip",
            checksum: "031209432668c6f2f3b59bc6b0ee7b4de5c6975575a9a6f36210237da553c6bc"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.1/TrafficAuthSDK.xcframework.zip",
            checksum: "baae72c10464fa635e77d88e07cee016bfaf120b3eb882006ef3f6cf4d7e4345"
        )
    ]
)
