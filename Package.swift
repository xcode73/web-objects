// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "web-objects",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "WebObjects", targets: ["WebObjects"])
    ],
    dependencies: [
        .package(url: "https://github.com/xcode73/feather-objects.git", branch: "test-dev")
    ],
    targets: [
        .target(name: "WebObjects", dependencies: [
            .product(name: "FeatherObjects", package: "feather-objects")
        ]),
    ],
    swiftLanguageVersions: [.v5]
)
