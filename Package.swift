// swift-tools-version:5.9
import PackageDescription

// MARK: - Release Configuration
// Updated automatically by CI when publishing a new release
let version = "0.15.0"
let checksum = "80a93aede3141f4da9fc0a4dd60ab0336fd7911c70dbed5f1d7aea3ba257124d"

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
