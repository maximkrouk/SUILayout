//
//  SUIMake.swift
//  sui-elements-try
//
//  Created by Maxim on 6/27/19.
//  Copyright © 2019 mx-cat. All rights reserved.
//

import SwiftUI

public extension View {
    var make: SUIMake<Self> { SUIMake(self) }
}

public struct SUIMake<V: View>: View {
    
    private var content: V
    public var body: some View { content }
    
    public init(_ content: V) { self.content = content }
    
    public func equalToSuperview() -> SUIMake<V.Modified<_FlexFrameLayout>> {
        SUIMake<V.Modified<_FlexFrameLayout>>(content.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity))
    }
    
    public func equalToScreen() -> SUIMake<V.Modified<_FrameLayout>> {
        SUIMake<V.Modified<_FrameLayout>>(content.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    }
    
    public func square(length: Length) -> SUIMake<V.Modified<_FrameLayout>> {
        SUIMake<V.Modified<_FrameLayout>>(content.frame(width: length, height: length))
    }
    
}
