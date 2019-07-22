# SUILayout 🍃

__Lightweight sizing dsl for SwiftUI__

Sometimes it's pretty annoying to type something like `.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)` , so I decided to extract common cases to this tiny framework.

## Usage

```swift
var body: some View {
    Text("Awesome SwiftUI")
        .pin.toLeft()
        .pin.toSuperview()
  	
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
- `toSuperview()`
- `toSuperview(background shape: ShapeStyle, cornerRadius: Length = 0)`
- `sizeToSuperview()`
- `widthToSuperview()`
- `heightToSuperview()`
- `sizeToSquare(length: Length)`
- `toTop()`
- `toBottom()`
- `toLeft()`
- `toRight()`

New capabilities will come soon 😉.

## Requirements

* ⌨️	XCode 11.0 Beta+
* 🖥	OSX 10.15+
* 📱	iOS 13.0+

## Installation

SUILayout is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SUILayout'
```
and run `pod install` from the terminal.

---

*Feel free to contribute or [communicate](https://twitter.com/mxcat_).*