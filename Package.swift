// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//#error("Automatic package resolution disabled.")
let package = Package(
    name: "MapboxNavigation",
    defaultLocalization: "en",
    platforms: [.iOS(.v10)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MapboxCoreNavigation",
            targets: [
                "CMapboxCoreNavigation",
                "MapboxCoreNavigation",
            ]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
//        .package(name: "MapboxAccounts", url: "https://github.com/mapbox/mapbox-accounts-ios/", .branch("1ec5-v2.3.1")),
        .package(name: "MapboxDirections", url: "https://github.com/mapbox/mapbox-directions-swift/", from: "1.2.0-alpha.3"),
//        .package(name: "MapboxMobileEvents", url: "https://github.com/mapbox/mapbox-events-ios/", from: "0.10.6"),
//        .package(url: "https://github.com/mapbox/mapbox-navigation-native-ios/", from: "28.1.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MapboxCoreNavigation",
            dependencies: [
                "CMapboxCoreNavigation",
//                "MapboxAccounts",
                "MapboxDirections",
//                "MapboxMobileEvents",
//                "MapboxNavigationNative",
            ],
            exclude: ["Info.plist"]),
        .target(
            name: "CMapboxCoreNavigation",
            dependencies: [
//                "MapboxAccounts",
            ])
    ]
)

