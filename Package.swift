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
            url: "https://github.com/MyPureCloud/genesys-messenger-transport-mobile-sdk/releases/download/v2.16.0-rc3/MessengerTransport.xcframework.zip",
            checksum: "47a3de503014f0c892c87c55b794aae80d6f9f3a1cd78e55e9ec2cb192c9789a"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudMessengerTransport"
        ])
    ]
)
