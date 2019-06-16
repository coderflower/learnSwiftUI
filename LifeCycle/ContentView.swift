//
//  ContentView.swift
//  LifeCycle
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            NavigationButton(destination: DetailView()) {
                Text("Hello world!")
            }
            }.onAppear {
                print("ContentView appeared!")
            }.onDisappear {
                print("ContentView disappeared!")
        }
    }
}

struct DetailView: View {
    var body: some View {
        VStack {
            Text("Second View")
            }.onAppear {
                print("DetailView appeared!")
            }.onDisappear {
                print("DetailView disappeared!")
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
