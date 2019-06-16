//
//  ContentView.swift
//  StaticItems
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        List {
            RestaurantRow(name: "Joe's original")
            RestaurantRow(name: "The real Joe's original")
            RestaurantRow(name: "Original Joe's")
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
