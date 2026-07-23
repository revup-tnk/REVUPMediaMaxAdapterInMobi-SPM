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
        .package(url: "https://github.com/InMobi/InMobiSDK-Swift-Package.git", exact: "11.3.0")
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterInMobiTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterInMobi"),
                .target(name: "AppLovinMediationInMobiAdapter"),
                .product(name: "InMobiSDK", package: "InMobiSDK-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterInMobi",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterInMobi.zip",
            checksum: "f89a22d937c7f3d692fefdb67d6a448b989b09dce5c508db0edd082b6f2e5a82"
        ),
        .binaryTarget(
            name: "AppLovinMediationInMobiAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/inmobi-adapter/AppLovinMediationInMobiAdapter-11.3.0.1.zip",
            checksum: "b460199258dd68d023e4d1bfb7e35bff904ea0690a741cfbe8a6df1d8405a247"
        )
    ]
)
