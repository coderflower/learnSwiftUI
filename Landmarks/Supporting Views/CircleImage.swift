//
//  CircleImage.swift
//  Landmarks
//
//  Created by 蔡龙君 on 2019/6/11.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var image: Image
    var body: some View {
        image
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("circle_searchFriends_empty_icon"))
    }
}
#endif
