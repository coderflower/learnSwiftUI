//
//  SliderView.swift
//  Views
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    @State var celsius: Double = 0
    var body: some View {
        VStack {
            Slider(value: $celsius, from: -100, through: 100, by: 0.1)
            Text("\(celsius) celsius is \(celsius * 9 / 5 + 32) Fahrenheit")
        }
    }
}
#if DEBUG
struct SliderView_Previews : PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
#endif
