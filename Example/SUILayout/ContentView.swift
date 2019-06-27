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
            .color(.init(white: 0.99))
            .make.equalToSuperview()
            .background(Color(white: 0.1))
            .edgesIgnoringSafeArea(.all)
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
