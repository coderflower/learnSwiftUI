//
//  TapTestView.swift
//  Views
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct TapTestView : View {
    var body: some View {
        VStack {
            Text("Tap me!").tapAction {
                print("tapped!")
            }
            Text("Double tap me!").tapAction(count: 2) {
                print("Double tapped!")
            }
        }
        
    }
}

#if DEBUG
struct TapTestView_Previews : PreviewProvider {
    static var previews: some View {
        TapTestView()
    }
}
#endif
