//
//  ContentView.swift
//  Navigation
//
//  Created by 蔡龙君 on 2019/6/18.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        let first = Restaurant(name: "Joe's Original")
        let restaurants = [first]
        return NavigationView {
            List(restaurants) { restaurant in
                NavigationButton(destination: RestaurantView(restaurant: restaurant)) {
                    RestaurantRow(restaurant: restaurant)
                }
            }.navigationBarTitle(Text("Selected a restaurant"))
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



struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
}

struct RestaurantRow: View {
    var restaurant: Restaurant
    var body: some View {
        Text(restaurant.name)
    }
}

struct RestaurantView: View {
    var restaurant: Restaurant
    var body: some View {
        Text("Come and eat at \(restaurant.name)")
        .font(.largeTitle)
    }
}
