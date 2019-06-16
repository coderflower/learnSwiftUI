//
//  ContentView.swift
//  DeleItem
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//  https://www.hackingwithswift.com/quick-start/swiftui/how-to-let-users-move-rows-in-a-list

import SwiftUI

struct ContentView : View {
    @State var users = ["Paul", "Yaylor", "Adele"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users.identified(by: \.self)) {
                    Text($0)
                    }
                    .onDelete(perform: delete(at:))
                .onMove(perform: move(form:to:))
            }
            .navigationBarItems(trailing: EditButton())
        }
    }
    private func delete(at offsets: IndexSet) {
        if let first = offsets.first {
            users.remove(at: first)
        }
    }
    private func move(form source: IndexSet, to destination: Int) {
        // sort the indexes low to high
        let reversedSource = source.sorted()
        // then loop form the back to avoid reordering problems
        for index in reversedSource.reversed() {
            // for each item, remove it an insert it at the destination
            users.insert(users.remove(at: index), at: destination)
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
