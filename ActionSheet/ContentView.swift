//
//  ContentView.swift
//  ActionSheet
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var showingSheet = false
    
    var sheet: ActionSheet {
        ActionSheet(title: Text("Action"), message: Text("Quote mark"), buttons: [.default(Text("Show Sheet"), onTrigger: {
                self.showingSheet = false
            })])
    }
    var body: some View {
        Button(action: {
            self.showingSheet = true
        }) {
            Text("Woo")
        }
            .presentation(showingSheet ? sheet : nil)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
