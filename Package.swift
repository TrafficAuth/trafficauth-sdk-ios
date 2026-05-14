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
            checksum: "7e2607581d624520eb7dc42f0ace90319718d2074f480539f7d8adebe1a73a9a"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.1/TrafficAuthSDK.xcframework.zip",
            checksum: "efa0441ee908ac749c41ea705e2a456d804de772e6f48770704a4e7e7107f89a"
        )
    ]
)
