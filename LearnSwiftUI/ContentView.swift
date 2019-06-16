//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by 蔡龙君 on 2019/6/12.
//  Copyright © 2019 蔡龙君. All rights reserved.
//  https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-bar-items-to-a-navigation-view

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            Text("This is a gerat app")
             /// 默认情况下 导航栏都是largeTitle,
            .navigationBarTitle(Text("Welcome"), displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {
                    print("Help tapped!")
                }, label: {
                    Text("Help")
                }))
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
