//
//  ContentView.swift
//  DynamicItems
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//  https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-a-list-of-dynamic-items

import SwiftUI

struct ContentView : View {
    let restaurants = [
        Restaurant(name: "Joe's original"),
        Restaurant(name: "The real joe's original"),
        Restaurant(name: "original Joe's")
    ]
    var body: some View {
        // List(restaurants){RestaurantRow(restaurant: $0)}
        List(restaurants, rowContent: RestaurantRow.init)
    }
}



#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
