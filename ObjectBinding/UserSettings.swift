//
//  UserSettings.swift
//  ObjectBinding
//
//  Created by 蔡龙君 on 2019/6/16.
//  Copyright © 2019 蔡龙君. All rights reserved.
//

import SwiftUI
import Combine

class UserSettings: BindableObject {
    var didChange = PassthroughSubject<Void, Never>()
    var score = 0 {
        didSet {
            didChange.send(())
        }
    }
}
