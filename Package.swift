// swift-tools-version:6.0.0

import PackageDescription
import Foundation

let package = Package(
    name: "swift-concurrency-extras",
    platforms: [
        .iOS("13.0"),
        .macOS("10.15"),
        .tvOS("13.0"),
        .watchOS("6.0")
    ],
    products: [
        .library(
            name: "ConcurrencyExtras",
            targets: ["ConcurrencyExtras"]
        ),
        .library(
            name: "ConcurrencyExtrasTestSupport",
            targets: ["ConcurrencyExtrasTestSupport"]
        )
    ],
    targets: [
        .target(
            name: "ConcurrencyExtras_Aggregation",
            dependencies: ["ConcurrencyExtras"],
            packageAccess: false,
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ConcurrencyExtras",
            url: "https://github.com/swift-precompiled/swift-concurrency-extras/releases/download/1.4.1/ConcurrencyExtras-843cddb6ac9c14c03478fede3f5f7d4c0208160fe9afa283e33a08fbeba28e23.xcframework.zip",
            checksum: "843cddb6ac9c14c03478fede3f5f7d4c0208160fe9afa283e33a08fbeba28e23"
        ),
        .target(
            name: "ConcurrencyExtrasTestSupport_Aggregation",
            dependencies: ["ConcurrencyExtrasTestSupport"],
            packageAccess: false,
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ConcurrencyExtrasTestSupport",
            url: "https://github.com/swift-precompiled/swift-concurrency-extras/releases/download/1.4.1/ConcurrencyExtrasTestSupport-5547d8cf4f58fba4c794b649b38384c1d476965940f4f9b2f8f2f0b5c45e19a7.xcframework.zip",
            checksum: "5547d8cf4f58fba4c794b649b38384c1d476965940f4f9b2f8f2f0b5c45e19a7"
        )
    ]
)