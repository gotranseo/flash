// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Flash",
    products: [
        .library(name: "Flash", targets: ["Flash"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0")
    ],
    targets: [
        .target(name: "Flash", dependencies: ["Vapor"]),
        .testTarget(name: "FlashTests", dependencies: ["Flash"]),
    ]
)
