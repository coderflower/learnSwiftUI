//
//  SegmentdControlView.swift
//  Views
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct SegmentdControlView : View {
    @State private var favoriteColor = 0
    var colors = ["red", "Green", "blue"]
    var body: some View {
        VStack {
            SegmentedControl(selection: $favoriteColor) {
                ForEach(0..<colors.count) {
                    Text(self.colors[$0]).tag($0)
                }
            }
            Text("Value: \(favoriteColor)")
        }
    }
}

#if DEBUG
struct SegmentdControlView_Previews : PreviewProvider {
    static var previews: some View {
        SegmentdControlView()
    }
}
#endif
