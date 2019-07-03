# SUILayout

Sometimes it's pretty annoying to type something like `.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)` , so I decided to extract common cases to this tiny framework.

## Usage

```swift
var body: some View {
	Text("Awesome SwiftUI Layout")
		.pin.toScreen()
}
```

__Pins:__

- `toScreen(multipliedBy multiplier: CGSize)`
- `toScreen(insetBy inset: CGPoint = .zero)`
- `sizeToScreen(multipliedBy multiplier: CGSize)`
- `sizeToScreen(insetBy inset: CGPoint = .zero)`
- `widthToScreen(multipliedBy multiplier: CGFloat)`
- `widthToScreen(insetBy inset: CGFloat = 0)`
- `heightToScreen(multipliedBy multiplier: CGFloat)`
- `heightToScreen(insetBy inset: CGFloat = 0)`
- `sizeToSquare(length: Length)`

New capabilities will come soon 😉.

## Requirements

* 🖥	OSX 10.15+

* 📱	iOS 13.0+

## Installation

SUILayout is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SUILayout'
```
and run `pod install` from the terminal.
