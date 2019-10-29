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
    #if os(iOS)
    private var screen = UIScreen.main.bounds
    #elseif os(OSX)
    private var screen = NSScreen.main!.frame
    #endif
    
    private var content: Content
    internal init(_ view: Content) { content = view }
    
    /// Pins size to screen size
    ///
    /// Ignores safeAreaInsets
    /// - Parameter multipliers: Specifies multipliers for screen dimensions.
    public func toScreen(multipliedBy multipliers: CGPoint) -> some View {
        sizeToScreen(multipliedBy: multipliers).edgesIgnoringSafeArea(.all)
    }
    
    /// Pins size to screen size
    ///
    /// Ignores safeAreaInsets
    /// - Parameter insets: Specifies insets for screen dimensions.
    public func toScreen(insetBy insets: CGPoint = .zero) -> some View {
        sizeToScreen(insetBy: insets).edgesIgnoringSafeArea(.all)
    }
    
    /// Pins size to screen size
    ///
    /// Doesn't ignore safeAreaInsets
    /// - Parameter multipliers: Specifies multipliers for screen dimensions.
    public func sizeToScreen(multipliedBy multipliers: CGPoint) -> some View {
        content.frame(width: screen.width * multipliers.x, height: screen.height * multipliers.y)
    }
    
    /// Pins size to screen size
    ///
    /// Doesn't ignore safeAreaInsets
    /// - Parameter insets: Specifies insets for screen dimensions.
    public func sizeToScreen(insetBy insets: CGPoint = .zero) -> some View {
        content.frame(width: screen.width - insets.x, height: screen.height - insets.y)
    }
    
    /// Pins width to screen width
    ///
    /// - Parameter multiplier: Specifies the multiplier for screen width.
    public func widthToScreen(multipliedBy multiplier: CGFloat) -> some View {
        content.frame(width: screen.width * multiplier)
    }
    
    /// Pins width to screen width
    ///
    /// - Parameter inset: Specifies the inset for screen width.
    public func widthToScreen(insetBy inset: CGFloat = 0) -> some View {
        content.frame(width: screen.width - inset)
    }
    
    /// Pins height to screen height
    ///
    /// - Parameter multiplier: Specifies the multiplier for screen height.
    public func heightToScreen(multipliedBy multiplier: CGFloat) -> some View {
        content.frame(height: screen.height * multiplier)
    }
    
    /// Pins size to screen height
    ///
    /// - Parameter inset: Specifies the inset for screen height.
    public func heightToScreen(insetBy inset: CGFloat = 0) -> some View {
        content.frame(height: screen.height - inset)
    }
    
    /// Pins size to superview
    ///
    /// The same as
    ///
    /// `frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)`
    ///
    /// Ignores safeAreaInsets.
    public func toSuperview() -> some View {
        sizeToSuperview().edgesIgnoringSafeArea(.all)
    }
    
    /// Pins size to adjustment superview's size
    ///
    /// - Parameter multipliers: Specifies multipliers for superview dimensions.
    public func sizeToSuperview(multipliedBy multipliers: CGPoint) -> some View {
        GeometryReader { proxy in
            self.size(to: {
                let size = proxy.frame(in: .local).size
                return .init(width: size.width * multipliers.x,
                             height: size.height * multipliers.y)
            }())
        }
    }
    
    /// Sets frame to fixed size
    ///
    /// - Parameter size: Specifies a new size.
    public func size(to size: CGSize) -> some View {
        content.frame(width: size.width, height: size.height)
    }
    
    /// Pins size to superview
    ///
    /// The same as
    ///
    /// `frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)`
    ///
    /// Doesn't ignore safeAreaInsets.
    public func sizeToSuperview() -> some View {
        content.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }
    
    /// Pins width to superview's width
    ///
    /// The same as
    ///
    /// `frame(minWidth: 0, maxWidth: .infinity)`
    public func widthToSuperview() -> some View {
        content.frame(minWidth: 0, maxWidth: .infinity)
    }
    
    /// Pins width to superview's width
    ///
    /// - Parameter multiplier: Specifies multipliers for screen width.
    public func widthToSuperview(multipliedBy multiplier: CGFloat) -> some View {
        GeometryReader { proxy in
            self.content.frame(width: proxy.frame(in: .local).size.width * multiplier)
        }
    }
    
    /// Pins width to superview's width
    ///
    /// - Parameter inset: Specifies the inset for screen width.
    public func widthToSuperview(insetBy inset: CGFloat) -> some View {
        GeometryReader { proxy in
            self.content.frame(width: proxy.frame(in: .local).size.width - inset)
        }
    }
    
    /// Pins size to superview
    ///
    /// The same as
    ///
    /// `frame(minHeight: 0, maxHeight: .infinity)`
    public func heightToSuperview() -> some View {
        content.frame(minHeight: 0, maxHeight: .infinity)
    }
    
    /// Pins heigth to superview's height
    ///
    /// - Parameter multiplier: Specifies the multiplier for screen height.
    public func heightToSuperview(multipliedBy multiplier: CGFloat) -> some View {
        GeometryReader { proxy in
            self.content.frame(width: proxy.frame(in: .local).size.height * multiplier)
        }
    }
    
    /// Pins heigth to superview's height
    ///
    /// - Parameter inset: Specifies the inset for screen height.
    public func heightToSuperview(insetBy inset: CGFloat) -> some View {
        GeometryReader { proxy in
            self.content.frame(width: proxy.frame(in: .local).size.height - inset)
        }
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
