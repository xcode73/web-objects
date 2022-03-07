// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "web-api",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        .library(name: "WebApi", targets: ["WebApi"]),
    ],
    dependencies: [
        .package(url: "https://github.com/feathercms/feather-api", .branch("main")),
    ],
    targets: [
        .target(name: "WebApi", dependencies: [
            .product(name: "FeatherApi", package: "feather-api"),
        ]),
    ]
)
