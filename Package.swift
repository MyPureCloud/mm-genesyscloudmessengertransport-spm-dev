// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GenesysCloudMessengerTransport",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "GenesysCloudMessengerTransport",
            targets: ["GenesysCloudMessengerTransport"]),
    ],
    targets: [
        .binaryTarget(
            name: "GenesysCloudMessengerTransport",
            url: "https://github.com/MyPureCloud/genesys-messenger-transport-mobile-sdk/releases/download/v2.9.3-rc2/MessengerTransport.xcframework.zip",
            checksum: "a00fc1d60a2901fd94d52decbae03b4a64495b949c96e1121f2083c36dc38156"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudMessengerTransport"
        ])
    ]
)
