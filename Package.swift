// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SFSymbols7PublicPackage",
    platforms: [
        .iOS(.v18),
        .macOS(.v15),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SFSymbols7PublicPackage",
            targets: ["SFSymbols7PublicPackage"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SFSymbols7PublicPackage",
            resources: [
                .process("name_availability.plist"),
                .process("categories.plist"),
                .process("symbol_search.plist"),
                .process("symbol_categories.plist"),
            ]),

    ]
)
