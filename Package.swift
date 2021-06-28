// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "AnimButton",
    products: [
        .library(
            name: "AnimButton",
            targets: ["AnimButton"])
    ],
    dependencies: [
      .package(url: "https://github.com/eonist/Spatial/.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "AnimButton",
            dependencies: ["Spatial"]),
        .testTarget(
            name: "AnimButtonTests",
            dependencies: ["AnimButton"])
    ]
)
