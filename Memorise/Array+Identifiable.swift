//
//  Array+Identifiable.swift
//  Memorise
//
//  Created by 蔡龙君 on 2020/6/26.
//  Copyright © 2020 蔡龙君. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
       firstIndex { $0.id == matching.id }
    }
}
