// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterInMobi",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterInMobi",
            targets: ["REVUPMediaMaxAdapterInMobiTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterInMobiTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterInMobi"),
                .target(name: "REVUPMediaMaxAdapterInMobiMediationAdapter"),
                .target(name: "InMobiSDK"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterInMobi",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaMaxAdapterInMobi.zip",
            checksum: "54911556a2deeb0d5f64b5973227b9ec52bc73149e597893d46a041e943b287b"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterInMobiMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/AppLovinMediationInMobiAdapter.xcframework.zip",
            checksum: "0117c6c4af921e0a612c1c8ea68bec8e3ad90b99d2986b80df3d9c2e12662fe0"
        ),
        .binaryTarget(
            name: "InMobiSDK",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/InMobiSDK.xcframework.zip",
            checksum: "4a7ff71b8128766db4f0b03c3a70f8abb5f3cc9023824ed114518538f9d2f45f"
        ),
    ]
)
