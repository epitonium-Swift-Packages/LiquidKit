// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LiquidKit",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LiquidKit",
            targets: ["LiquidKit"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/IBM-Swift/swift-html-entities.git", from: "4.0.0"),
         .package(url: "https://github.com/littleigloo/STRFTimeFormatter.git", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "LiquidKit",
            dependencies: [
                .product(name: "HTMLEntities", package: "swift-html-entities"),
                "STRFTimeFormatter"]),
        .testTarget(
            name: "LiquidKitTests",
            dependencies: ["LiquidKit"])
    ]
)
