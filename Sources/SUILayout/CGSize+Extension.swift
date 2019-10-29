//
//  CGSize+Extension.swift
//  SUILayout
//
//  Created by Maxim Krouk on 10/30/19.
//

import SwiftUI

public extension CGSize {
    
    /// Returns a CGSize object with equal values of width and height.
    static func square(_ length: CGFloat) -> Self { .init(width: length, height: length) }
    
}
