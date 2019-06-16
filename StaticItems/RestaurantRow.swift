//
//  RestaurantRow.swift
//  StaticItems
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct RestaurantRow : View {
    var name: String
    var body: some View {
        Text("Restaurant: \(name)")
    }
}

#if DEBUG
struct RestaurantRow_Previews : PreviewProvider {
    static var previews: some View {
        RestaurantRow(name: "test")
    }
}
#endif
