//
//  DatePickerView.swift
//  Views
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI

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

#if DEBUG
struct DatePickerView_Previews : PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
#endif
