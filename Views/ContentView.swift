//
//  ContentView.swift
//  Views
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        DatePickerView()
    }
}

struct DatePickerView: View {
    var dataFormatter: DateFormatter {
        let formater = DateFormatter()
        formater.dateStyle = .long
        return formater
    }
    @State var birthDate = Date()
    var body: some View {
        VStack {
            DatePicker($birthDate,
                       maximumDate: Date(),
                       displayedComponents: .date){
                        Text("Text")
            }
            Text("Date is \(birthDate, formatter: dataFormatter)")
        }
    }
    
}

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

struct SliderView: View {
    @State var celsius: Double = 0
    var body: some View {
        VStack {
            Slider(value: $celsius, from: -100, through: 100, by: 0.1)
            Text("\(celsius) celsius is \(celsius * 9 / 5 + 32) Fahrenheit")
        }
    }
}

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
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
