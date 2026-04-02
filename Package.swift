// swift-tools-version:5.9
import PackageDescription

// MARK: - Release Configuration
// Updated automatically by CI when publishing a new release
let version = "0.2.5"
let checksum = "5ba3ba74a69fdde64c77840d83b33eaec0ed7123b64adcef94571f52b6da3d2b"

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
