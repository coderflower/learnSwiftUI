//
//  SwitchView.swift
//  Views
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

/// 开关
struct SwitchView: View {
    @State var showGreeting = true
    var body: some View {
        VStack {
            Toggle(isOn: $showGreeting) {
                Text("Show welcome message")
                }.padding()
            if showGreeting {
                Text("Hello world!")
            }
        }
    }
}

#if DEBUG
struct SwitchView_Previews : PreviewProvider {
    static var previews: some View {
        SwitchView()
    }
}
#endif
