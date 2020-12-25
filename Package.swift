// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WeechatRelay",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "WeechatRelay",
            targets: ["WeechatRelay"]),
    ],
    dependencies: [
	.package(url: "https://github.com/robbiehanson/CocoaAsyncSocket", from: "7.6.4")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "WeechatRelay",
            dependencies: ["CocoaAsyncSocket"]),
        .testTarget(
            name: "WeechatRelayTests",
            dependencies: ["WeechatRelay"]),
    ]
)
