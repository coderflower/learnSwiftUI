//
//  ContentView.swift
//  Views
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var scale: Length = 1.0
    var body: some View {
        Image("turtlerock")
            .scaleEffect(scale)
            .gesture(
                TapGesture()
                    .onEnded{ _ in
                        self.scale += 0.1
                }
        )
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
