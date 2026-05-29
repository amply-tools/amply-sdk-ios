// swift-tools-version:5.9
import PackageDescription

// MARK: - Release Configuration
// Updated automatically by CI when publishing a new release
let version = "0.5.2"
let checksum = "2cf2c3781174e567e2c01e974d4832292d28abe2cf2d49f937f2ede98f25a752"

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
