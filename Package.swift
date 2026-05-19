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
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.2/libEncoderLib.xcframework.zip",
            checksum: "cac67277ea4bd9aed499c81ceb84930cb86d4ecc4ef43f0e7b0e9ce4a0fab6bb"
        ),
        .binaryTarget(
            name: "TrafficAuthSDK",
            url: "https://github.com/TrafficAuth/trafficauth-sdk-ios/releases/download/v1.0.2/TrafficAuthSDK.xcframework.zip",
            checksum: "2e6cb58cb1960b177f6b73d55dd81ec171371366aee470514a521e17bc1da9ae"
        )
    ]
)
