# SUILayout 🍃

__Lightweight sizing dsl for SwiftUI__

Sometimes it's pretty annoying to type something like `.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)` , so I decided to extract common cases to this tiny framework.

## Usage

```swift
import SUILayout
import SwiftUI

struct MyView: View {

    var body: some View {
        Text("Awesome SwiftUI")
      			.foregroundColor(.white)
            .pin.toLeft()
            .pin.size(to: .square(240))
      			.background(Color.black)
    }

}
```

__Pins:__

- `toScreen(multipliedBy multipliers: CGPoint)`
- `toScreen(insetBy inset: CGPoint = .zero)`
- `sizeToScreen(multipliedBy multipliers: CGPoint)`
- `sizeToScreen(insetBy insets: CGPoint = .zero)`
- `widthToScreen(multipliedBy multiplier: CGFloat)`
- `widthToScreen(insetBy inset: CGFloat = 0)`
- `heightToScreen(multipliedBy multiplier: CGFloat)`
- `heightToScreen(insetBy inset: CGFloat = 0)`
- `toSuperview()`
- `sizeToSuperview(multipliedBy multipliers: CGPoint)`
- `size(to size: CGSize)`
- `sizeToSuperview()`
- `widthToSuperview()`
- `widthToSuperview(multipliedBy multiplier: CGFloat)`
- `widthToSuperview(insetBy inset: CGFloat)`
- `heightToSuperview()`
- `heightToSuperview(multipliedBy multiplier: CGFloat)`
- `heightToSuperview(insetBy inset: CGFloat)`
- `toTop()`
- `toBottom()`
- `toLeft()`
- `toRight()`

## Requirements

* ⌨️	XCode 11.0+
* 🖥	OSX 10.15+
* 📱	iOS 13.0+

## Installation

#### Primary:

Via SwiftPM, just add a link to this repo to your Package.swift file.

```swift
.package(url: "https://github.com/maximkrouk/SUILayout.git", from: "3.0.0")
```

Or use XCodePM.

#### Secondary:

SUILayout is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SUILayout'
```
and run `pod install` from the terminal.

---

*Feel free to contribute or [communicate](https://twitter.com/maximkrouk).*

