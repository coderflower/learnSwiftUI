//
//  ContentView.swift
//  DeleItem
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

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
            }
        }
    }
    private func delete(at offsets: IndexSet) {
        if let first = offsets.first {
            users.remove(at: first)
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
