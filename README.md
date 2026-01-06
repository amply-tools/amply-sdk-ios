# AmplySDK for iOS

Amply SDK for mobile app engagement, campaign management, and analytics.

## Requirements

- iOS 14.0+
- Xcode 15.0+
- Swift 5.9+

## Installation

### Swift Package Manager (Recommended)

Add AmplySDK to your project via Xcode:

1. File → Add Package Dependencies
2. Enter: `https://github.com/amply-tools/amply-sdk-ios.git`
3. Select version rule (e.g., "Up to Next Major Version")

Or add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/amply-tools/amply-sdk-ios.git", from: "0.1.7")
]
```

Then add to your target:

```swift
.target(
    name: "YourApp",
    dependencies: ["AmplySDK"]
)
```

### CocoaPods

Add to your `Podfile`:

```ruby
pod 'AmplySDK', '~> 0.1.7'
```

Then run:

```bash
pod install
```

### Manual Installation

1. Download `AmplySDK.xcframework.zip` from the [latest release](https://github.com/amply-tools/amply-sdk-ios/releases/latest)
2. Extract the XCFramework
3. Drag `AmplySDK.xcframework` into your Xcode project
4. In your target's "Frameworks, Libraries, and Embedded Content", ensure it's set to "Embed & Sign"

## Quick Start

```swift
import AmplySDK

// Initialize the SDK (typically in AppDelegate or App init)
AmplySDK.shared.initialize(
    appId: "your-app-id",
    apiKey: "your-api-key"
)

// Track custom events
AmplySDK.shared.track(
    event: "button_clicked",
    properties: ["button_id": "purchase", "screen": "home"]
)

// Set user properties
AmplySDK.shared.setUserProperty(key: "subscription_tier", value: "premium")

// Get active campaigns
AmplySDK.shared.getCampaigns { campaigns in
    for campaign in campaigns {
        print("Campaign: \(campaign.name)")
    }
}
```

## Features

- **Event Tracking** - Track user actions and custom events
- **Campaign Management** - Target users with personalized campaigns
- **User Properties** - Store and manage user attributes
- **Session Management** - Automatic session tracking
- **Deep Linking** - Handle campaign-triggered deep links
- **Rate & Review** - Prompt users to rate your app

## Documentation

For detailed documentation, visit [Amply Documentation](https://docs.amply.tools).

## Support

- [GitHub Issues](https://github.com/amply-tools/amply-sdk-ios/issues)
- [Documentation](https://docs.amply.tools)
- Email: support@amply.tools

## License

AmplySDK is available under the Apache 2.0 license. See the [LICENSE](LICENSE) file for details.