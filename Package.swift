// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterInMobi",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterInMobi",
            targets: ["REVUPMediaMaxAdapterInMobiTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-InMobi.git", exact: "11050000.0.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterInMobiTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterInMobi"),
                .product(name: "AppLovinMediationInMobiAdapter", package: "AppLovin-MAX-Swift-Package-InMobi"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterInMobi",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaMaxAdapterInMobi.zip",
            checksum: "43f0d0f31cecc94a790c0a26b68f93f0da392757a69ba6f714ece42c74bee1cd"
        ),
    ]
)
