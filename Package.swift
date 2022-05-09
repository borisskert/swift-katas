// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "SwiftKatas",
    products: [
        .library(
            name: "SwiftKatas",
            targets: ["SwiftKatas"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiftKatas",
            dependencies: []),
        .testTarget(
            name: "SwiftKatasTests",
            dependencies: ["SwiftKatas"]),
    ]
)
