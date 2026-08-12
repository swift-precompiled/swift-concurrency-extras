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
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ConcurrencyExtras",
            url: "https://github.com/swift-precompiled/swift-concurrency-extras/releases/download/1.4.1/ConcurrencyExtras-b603ecf9e7aa7a7cdeea4cf71b5af4e0ca822e1fe6543d5e55e4450c0a6f9cf1.xcframework.zip",
            checksum: "b603ecf9e7aa7a7cdeea4cf71b5af4e0ca822e1fe6543d5e55e4450c0a6f9cf1"
        ),
        .target(
            name: "ConcurrencyExtrasTestSupport_Aggregation",
            dependencies: ["ConcurrencyExtrasTestSupport"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ConcurrencyExtrasTestSupport",
            url: "https://github.com/swift-precompiled/swift-concurrency-extras/releases/download/1.4.1/ConcurrencyExtrasTestSupport-e3bf49cd73dc2801e88352b52cba32777938c77b130d4114624d1658599118aa.xcframework.zip",
            checksum: "e3bf49cd73dc2801e88352b52cba32777938c77b130d4114624d1658599118aa"
        )
    ]
)