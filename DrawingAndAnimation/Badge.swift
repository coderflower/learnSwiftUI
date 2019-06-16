//
//  Badge.swift
//  DrawingAndAnimation
//
//  Created by 蔡龙君 on 2019/6/12.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct Badge : View {
    static let rotationCount = 8
    
    var badgeSymbols: some View {
        ForEach(0..<Badge.rotationCount) {
            RotatedBadgeSymbol(angle: .degrees(Double($0) / Double(Badge.rotationCount)) * 360.0)
        }.opacity(0.5)
    }
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { gemetry in
                self.badgeSymbols.scaleEffect(0.25, anchor: .top)
                    .position(x: gemetry.size.width / 2, y: (0.75) * gemetry.size.height)
            }
        }
        .scaledToFit()
    }
}
#if DEBUG
struct Badge_Previews : PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
#endif
