// swift-tools-version:5.9
import PackageDescription

// MARK: - Release Configuration
// Updated automatically by CI when publishing a new release
let version = "0.4.1"
let checksum = "9ef22cbda4c788395759de609879eb396e0df05143356af3a037e5eb0ff3d9be"

let package = Package(
    name: "AmplySDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "AmplySDK",
            targets: ["AmplySDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "AmplySDK",
            url: "https://github.com/amply-tools/amply-sdk-ios/releases/download/\(version)/AmplySDK.xcframework.zip",
            checksum: checksum
        ),
    ]
)
