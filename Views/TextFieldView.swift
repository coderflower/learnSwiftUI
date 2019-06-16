//
//  TextFieldView.swift
//  Views
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct TextFieldView: View {
    @State var name: String = "Tim"
    var body: some View {
        VStack {
            TextField($name)
                .padding()
                .textFieldStyle(.roundedBorder)
                .background(Color.red)
            Text("Hello, \(name)!")
        }
    }
}

#if DEBUG
struct TextFieldView_Previews : PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
#endif
