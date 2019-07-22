//
//  ContentView.swift
//  SUILayout_Example
//
//  Created by Maxim on 6/27/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import SwiftUI
import SUILayout

struct ContentView : View {
    var body: some View {
        Text("Awesome SwiftUI layout.")
            .foregroundColor(.init(white: 0.5))
            .pin.toRight()
            .pin.toBottom()
            .pin.toSuperview(background: Color(white: 0.1))
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
