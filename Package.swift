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
            url: "https://github.com/MyPureCloud/genesys-messenger-transport-mobile-sdk/releases/download/v2.9.2-rc4/MessengerTransport.xcframework.zip",
            checksum: "f4205ce1dbbff0b86c51e0db96b4c59fc8506ace362a4d2ebd463966201a96bd"
        ),
        .testTarget(name: "PackageTests", dependencies: [
            "GenesysCloudMessengerTransport"
        ])
    ]
)
