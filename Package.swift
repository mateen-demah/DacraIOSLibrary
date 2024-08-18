// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DacraIOSLibrary",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DacraIOSLibrary",
            targets: ["DacraIOSLibrary"]),
    ],
    dependencies: [.package(url: "https://github.com/mateen-demah/bugsnag-cocoa-fork", branch: "dacra_main")],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DacraIOSLibrary",
            dependencies: [.product(name: "Bugsnag", package: "bugsnag-cocoa-fork")]),
//        .testTarget(
//            name: "DacraIOSLibraryTests",
//            dependencies: ["DacraIOSLibrary"]),
    ]
)
