Pod::Spec.new do |spec|
  spec.name         = "AmplySDK"
  spec.version      = "0.2.1"
  spec.summary      = "Amply SDK for mobile app engagement and campaign management"
  spec.description  = <<-DESC
    AmplySDK is a powerful SDK for mobile app engagement, campaign management,
    and analytics. Built with Kotlin Multiplatform for native iOS performance.
  DESC

  spec.homepage     = "https://github.com/amply-tools/amply-sdk-ios"
  spec.license      = { :type => "Apache 2.0", :file => "LICENSE" }
  spec.author       = { "Amply Team" => "support@amply.tools" }

  spec.source       = {
    :http => "https://github.com/amply-tools/amply-sdk-ios/releases/download/#{spec.version}/AmplySDK.xcframework.zip"
  }

  spec.ios.deployment_target = "14.0"
  spec.swift_versions = ["5.0", "5.5", "5.9"]

  # Binary XCFramework - no source code
  spec.vendored_frameworks = "AmplySDK.xcframework"
  spec.static_framework = true
  spec.libraries = "c++"

  spec.module_name = "AmplySDK"
  spec.preserve_paths = "AmplySDK.xcframework"
end