// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SabPaisa_IOS_Sdk",
    platforms: [
          .iOS(.v15)
        ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SabPaisa_IOS_Sdk",
            targets: ["SabPaisa_IOS_Sdk"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/jriosdev/iOSDropDown.git", from: "0.4.0"),
         .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.7.1"),
         .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.4"),
         .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.1.3")
         
    ],
    targets: [
            // Targets are the basic building blocks of a package. A target can define a module or a test suite.
            // Targets can depend on other targets in this package, and on products in packages this package depends on.
            .binaryTarget(
                name: "SabPaisa_IOS_Sdk",
                path: "./Sources/SabPaisa_IOS_Sdk.xcframework")
        ]
)
