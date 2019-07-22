//
//  Pin.swift
//  SUILayout
//
//  Created by Maxim on 6/27/19.
//  Copyright © 2019 mx-cat. All rights reserved.
//

import SwiftUI

public extension View {
    var pin: Pin<Self> { Pin(self) }
}

public struct Pin<Content: View> {
    /// Screen bounds
    private var screen = UIScreen.main.bounds
    
    private var content: Content
    public init(_ view: Content) { content = view }
    
    /// Pins size to UIScreen.main.bounds.size
    ///
    /// Ignores safeAreaInsets
    /// - Parameter multipliedBy: specifies multipliers for screen dimensions
    public func toScreen(multipliedBy multiplier: CGSize) -> some View {
        sizeToScreen(multipliedBy: multiplier).edgesIgnoringSafeArea(.all)
    }
    
    /// Pins size to UIScreen.main.bounds.size
    ///
    /// Ignores safeAreaInsets
    /// - Parameter insetBy: specifies insets for screen dimensions
    public func toScreen(insetBy inset: CGPoint = .zero) -> some View {
        sizeToScreen(insetBy: inset).edgesIgnoringSafeArea(.all)
    }
    
    /// Pins size to UIScreen.main.bounds.size
    ///
    /// Doesn't ignore safeAreaInsets
    /// - Parameter multipliedBy: specifies multipliers for screen dimensions
    public func sizeToScreen(multipliedBy multiplier: CGSize) -> some View {
        content.frame(width: screen.width * multiplier.width, height: screen.height * multiplier.height)
    }
    
    /// Pins size to UIScreen.main.bounds.size
    ///
    /// Doesn't ignore safeAreaInsets
    /// - Parameter insetBy: specifies insets for screen dimensions
    public func sizeToScreen(insetBy inset: CGPoint = .zero) -> some View {
        content.frame(width: screen.width - inset.x, height: screen.height - inset.y)
    }
    
    /// Pins size to UIScreen.main.bounds.size
    ///
    /// - Parameter multipliedBy: specifies insets for screen dimensions
    public func widthToScreen(multipliedBy multiplier: CGFloat) -> some View {
        content.frame(width: screen.width * multiplier)
    }
    
    /// Pins size to UIScreen.main.bounds.size
    ///
    /// - Parameter insetBy: specifies insets for screen dimensions
    public func widthToScreen(insetBy inset: CGFloat = 0) -> some View {
        content.frame(width: screen.width - inset)
    }
    
    /// Pins size to UIScreen.main.bounds.size
    ///
    /// - Parameter multipliedBy: specifies insets for screen dimensions
    public func heightToScreen(multipliedBy multiplier: CGFloat) -> some View {
        content.frame(height: screen.height * multiplier)
    }
    
    /// Pins size to UIScreen.main.bounds.size
    ///
    /// - Parameter insetBy: specifies insets for screen dimensions
    public func heightToScreen(insetBy inset: CGFloat = 0) -> some View {
        content.frame(height: screen.height - inset)
    }
    
    /// Pins size to superview
    ///
    /// The same as
    ///
    /// `frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)`
    ///
    /// Ignores safeAreaInsets
    public func toSuperview() -> some View {
        sizeToSuperview().edgesIgnoringSafeArea(.all)
    }
    
    /// Pins size to superview and sets the background.
    ///
    /// Ignores safeAreaInsets
    public func toSuperview<T: ShapeStyle>(background shape: T, cornerRadius: Length = 0) -> some View {
        sizeToSuperview()
            .background(shape, cornerRadius: cornerRadius)
            .edgesIgnoringSafeArea(.all)
    }
    
    /// Pins size to superview
    ///
    /// The same as
    ///
    /// `frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)`
    ///
    /// Doesn't ignore safeAreaInsets
    public func sizeToSuperview() -> some View {
        content.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }
    
    /// Pins size to superview
    ///
    /// The same as
    ///
    /// `frame(minWidth: 0, maxWidth: .infinity)`
    public func widthToSuperview() -> some View {
        content.frame(minWidth: 0, maxWidth: .infinity)
    }
    
    /// Pins size to superview
    ///
    /// The same as
    ///
    /// `frame(minHeight: 0, maxHeight: .infinity)`
    public func heightToSuperview() -> some View {
        content.frame(minHeight: 0, maxHeight: .infinity)
    }
    
    /// Sets frame to fixed square size
    ///
    /// - Parameter length: specifies insets for screen dimensions
    public func sizeToSquare(length: Length) -> some View {
        content.frame(width: length, height: length)
    }
    
    /// Aligns view to top.
    ///
    /// Aligns view to top, by embedding it in a VStack with a spacer.
    public func toTop() -> some View {
        VStack {
            content
            Spacer()
        }
    }
    
    /// Aligns view to bottom.
    ///
    /// Aligns view to bottom, by embedding it in a VStack with a spacer.
    public func toBottom() -> some View {
        VStack {
            Spacer()
            content
        }
    }
    
    /// Aligns view to left.
    ///
    /// Aligns view to left, by embedding it in an HStack with a spacer.
    public func toLeft() -> some View {
        HStack {
            content
            Spacer()
        }
    }
    
    /// Aligns view to right.
    ///
    /// Aligns view to right, by embedding it in an HStack with a spacer.
    public func toRight() -> some View {
        HStack {
            Spacer()
            content
        }
    }
    
}
