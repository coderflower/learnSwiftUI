//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by 蔡龙君 on 2019/6/12.
//  Copyright © 2019 蔡龙君. All rights reserved.
//  https://www.hackingwithswift.com/quick-start/swiftui/how-to-group-views-together
//  默认view最多10个子控件如果添加第11个会报错，此时可以使用Group

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            Group {
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
            }
            Group {
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
