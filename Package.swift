// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "aharide",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "aharide",
            targets: ["aharide"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "aharide",
            dependencies: [
            ]),
        .testTarget(
            name: "aharideTests",
            dependencies: ["aharide"]),
        .binaryTarget(name: "aharide_dependence",
                      url: "https://ahamove.jfrog.io/artifactory/aha-ride-pod/user-pod-release.zip",
                      checksum: "881366da2b3ab5b1793114af4765443245c3518e "
                     )
    ]
)
