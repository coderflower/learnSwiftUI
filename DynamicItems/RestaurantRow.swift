//
//  RestaurantRow.swift
//  DynamicItems
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct RestaurantRow : View {
    var restaurant: Restaurant
    var body: some View {
        Text("Come and eat at \(restaurant.name)")
    }
}

#if DEBUG
struct RestaurantRow_Previews : PreviewProvider {
    static var previews: some View {
        RestaurantRow(restaurant: Restaurant(name: "test"))
    }
}
#endif
