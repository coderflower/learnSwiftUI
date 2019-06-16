//
//  PickerView.swift
//  Views
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct PickerView: View {
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = 0
    var body: some View {
        VStack {
            Picker(selection: $selectedColor,
                   label: Text("Please choose a color")) {
                    ForEach(0 ..< colors.count) {
                        Text(self.colors[$0])
                            .tag($0)
                    }
            }
            Text("Your selected: \(colors[selectedColor])")
        }
    }
}

#if DEBUG
struct PickerView_Previews : PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
#endif
