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
            url: "https://github.com/MyPureCloud/genesys-messenger-transport-mobile-sdk/releases/download/v2.9.3-rc3/MessengerTransport.xcframework.zip",
            checksum: "02b6477b345f86758d265a4661db1aa4d59a56f1e6a6b2dc745a8cf98f601060"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudMessengerTransport"
        ])
    ]
)
