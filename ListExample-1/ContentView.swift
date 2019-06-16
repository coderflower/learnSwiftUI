//
//  ContentView.swift
//  ListExample-1
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//  How to use implicit stacking
//  https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-implicit-stacking

import SwiftUI

struct ContentView : View {
    let users = [User(), User(), User()]
    var body: some View {
        List(users) {
            Image("umbagog")
                .resizable()
                .frame(width: 40, height: 40)
            Spacer()
            Text($0.userName)
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
