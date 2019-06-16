//
//  ContentView.swift
//  ObjectBinding
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @ObjectBinding var settings = UserSettings()
    var body: some View {
        VStack {
            Text("Your score is \(settings.score)")
            Button(action: {
                self.settings.score += 1
            }) {
                Text("Increase Score!")
            }
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
