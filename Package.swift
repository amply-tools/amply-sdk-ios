// swift-tools-version:5.9
import PackageDescription

// MARK: - Release Configuration
// Updated automatically by CI when publishing a new release
let version = "0.10.1"
let checksum = "9c2e436e43effda07d7f032471047424f9ab045f7d4d111c829fb70131db072b"

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
