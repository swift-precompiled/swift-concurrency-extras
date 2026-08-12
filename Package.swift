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
            targets: ["ConcurrencyExtras_PrecompiledProduct"]
        ),
        .library(
            name: "ConcurrencyExtrasTestSupport",
            targets: ["ConcurrencyExtrasTestSupport_PrecompiledProduct"]
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
            url: "https://github.com/swift-precompiled/swift-concurrency-extras/releases/download/1.4.1/ConcurrencyExtras-1a9994b6048c95e1f9a99a62b3b884f6eb256cff73db856ca51acc11b12aa8db.xcframework.zip",
            checksum: "1a9994b6048c95e1f9a99a62b3b884f6eb256cff73db856ca51acc11b12aa8db"
        ),
        .target(
            name: "ConcurrencyExtrasTestSupport_Aggregation",
            dependencies: ["ConcurrencyExtrasTestSupport"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ConcurrencyExtrasTestSupport",
            url: "https://github.com/swift-precompiled/swift-concurrency-extras/releases/download/1.4.1/ConcurrencyExtrasTestSupport-fbaf297f83e2cb85d7584c678524d6fe041cce72fb9c7e36b691699162fa939f.xcframework.zip",
            checksum: "fbaf297f83e2cb85d7584c678524d6fe041cce72fb9c7e36b691699162fa939f"
        ),
        .target(
            name: "ConcurrencyExtras_PrecompiledProduct",
            dependencies: ["ConcurrencyExtras_Aggregation"]
        ),
        .target(
            name: "ConcurrencyExtrasTestSupport_PrecompiledProduct",
            dependencies: ["ConcurrencyExtrasTestSupport_Aggregation"]
        )
    ]
)