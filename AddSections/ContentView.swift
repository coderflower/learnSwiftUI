//
//  ContentView.swift
//  AddSections
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//  分组TableView
//  https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-sections-to-a-list

import SwiftUI

struct ContentView : View {
    var body: some View {
        List {
            Section(header: Text("Importan tasks"), footer: Text("End")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }
            
            Section(header: Text("Other tasks")){
                TaskRow()
                TaskRow()
                TaskRow()
            }
        }
    }
}

struct TaskRow: View {
    var body: some View {
        Text("Task data goes here")
    }
}
#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
