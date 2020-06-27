//
//  Array+Only.swift
//  Memorise
//
//  Created by 蔡龙君 on 2020/6/26.
//  Copyright © 2020 蔡龙君. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
