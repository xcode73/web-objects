// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "web-objects",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "WebObjects", targets: ["WebObjects"]),
    ],
    dependencies: [
        .package(url: "https://github.com/xcode73/feather-objects", .branch("test-dev")),
    ],
    targets: [
        .target(name: "WebObjects", dependencies: [
            .product(name: "FeatherObjects", package: "feather-objects"),
        ]),
    ]
)
