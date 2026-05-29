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
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.3/libEncoderLib.xcframework.zip",
            checksum: "755d8e8eb3cedba2f259d545f98eb8483c47ab0ea696751e928ba163c97a2a00"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.3/TrafficAuthSDK.xcframework.zip",
            checksum: "4c04afd25fe0292e5db0a9be0176a79cde2decfc08128a70637c1d814aaf2524"
        )
    ]
)
