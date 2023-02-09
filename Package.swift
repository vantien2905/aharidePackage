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
        .binaryTarget(name: "contacts_service", path: "./Sources/contacts_service.xcframework"),
        .binaryTarget(name: "App", path: "./Sources/App.xcframework"),
        .binaryTarget(name: "FlutterPluginRegistrant", path: "./Sources/FlutterPluginRegistrant.xcframework"),
        .binaryTarget(name: "fluttertoast", path: "./Sources/fluttertoast.xcframework"),
        .binaryTarget(name: "google_maps_flutter_ios", path: "./Sources/google_maps_flutter_ios.xcframework"),
        .binaryTarget(name: "location", path: "./Sources/location.xcframework"),
        .binaryTarget(name: "path_provider_ios", path: "./Sources/path_provider_ios.xcframework"),
        .binaryTarget(name: "permission_handler_apple", path: "./Sources/permission_handler_apple.xcframework"),
        .binaryTarget(name: "shared_preferences_ios", path: "./Sources/shared_preferences_ios.xcframework"),
        .binaryTarget(name: "Toast", path: "./Sources/Toast.xcframework"),
        .binaryTarget(name: "url_launcher_ios", path: "./Sources/url_launcher_ios.xcframework"),
        .binaryTarget(name: "webview_flutter_wkwebview", path: "./Sources/webview_flutter_wkwebview.xcframework")
    ]
)
