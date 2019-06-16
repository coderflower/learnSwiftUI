//
//  ContentView.swift
//  EnvironmentObject
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//
// 来源
// https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-environmentobject-to-share-data-between-views

import SwiftUI

struct ContentView : View {
    @EnvironmentObject var settings: UserSettings
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.settings.score += 1
                }) {
                    Text("Increase Score!")
                }
                NavigationButton(destination: DetailView()) {
                    Text("Show Detail View")
                }
            }
        }
    }
}

struct DetailView: View {
    @EnvironmentObject var settings: UserSettings
    var body: some View {
        Text("Score: \(settings.score)")
    }
}
#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
