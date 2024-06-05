// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PTAnalyticsCore",
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PTAnalyticsCore",
            targets: ["PTAnalyticsCore"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/firebase/firebase-ios-sdk.git",
            .upToNextMajor(from: "10.4.0")
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PTAnalyticsCore",
            dependencies: [
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk")
            ],
            resources: [
                .process("Resources") // 指定资源目录
            ]
        ),
        .testTarget(
            name: "PTAnalyticsCoreTests",
            dependencies: ["PTAnalyticsCore"]),
    ]
)
