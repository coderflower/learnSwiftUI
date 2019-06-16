//
//  ContentView.swift
//  GroupList
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//  https://www.hackingwithswift.com/quick-start/swiftui/how-to-make-a-grouped-list

import SwiftUI

struct ContentView : View {
    var body: some View {
        List {
            Section(header: Text("Example"), footer: Text("End")) {
                TaskRow()
                TaskRow()
                TaskRow()
                TaskRow()
                TaskRow()
                TaskRow()
                }
            }
            .listStyle(.grouped)
            .edgesIgnoringSafeArea(.all)
        
    }
}

struct TaskRow: View {
    var body: some View {
        Text("task row")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
