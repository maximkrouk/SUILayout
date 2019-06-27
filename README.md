# SUILayout

Sometimes it's pretty annoying to type something like `.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)` , so I decided to extract common cases to this tiny framework.

## Usage

```swift
var body: some View {
Text("Awesome SwiftUI Layout")
.make.equalToScreen()
}
```

Avalible cases:

- `make.equalToScreen()`
- `make.equalToSuperview()`
- `make.square(length: Length)`

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
