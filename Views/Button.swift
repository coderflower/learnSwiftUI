//
//  ButtonView.swift
//  Views
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

/// 按钮
struct ButtonView: View {
    @State var showDetail = false
    var body: some View {
        VStack {
            Button(action: {
                self.showDetail.toggle()
            }) {
                Image("turtlerock")
                    .resizable()
                    .aspectRatio(1/1, contentMode: .fill)
                    .frame(width: 100, height: 100)
            }
            if showDetail {
                Text("you showld send message to me developer.swifter@gmail.com")
                    .font(.largeTitle)
                    .lineLimit(nil)
            }
        }
    }
}

#if DEBUG
struct ButtonView_Previews : PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
#endif
