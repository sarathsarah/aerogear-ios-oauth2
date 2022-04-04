// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "AeroGearOAuth2",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "AeroGearOAuth2",
            targets: ["AeroGearOAuth2"]),
    ],
    dependencies: [
        .package(name: "AeroGearHttp", url: "https://github.com/sarathsarah/aerogear-ios-http.git", branch: "master"),
    ],
    targets: [
        .target(
            name: "AeroGearOAuth2",
            dependencies: ["AeroGearHttp"],
            path: "AeroGearOAuth2",
            exclude: ["info.plist"]
        )
    ]
)
