//
//  Grid.swift
//  Memorise
//
//  Created by 蔡龙君 on 2020/6/26.
//  Copyright © 2020 蔡龙君. All rights reserved.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    private var items: [Item]
    private var viewForItem: (Item) -> ItemView
    
    init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }
    
    var body: some View {
        GeometryReader {
            self.body(for: GridLayout(itemCount: self.items.count, in: $0.size))
        }
    }
    
    private func body(for layout: GridLayout) -> some View {
        ForEach(items) {
            self.body(for: $0, in: layout)
        }
    }
    
    private func body(for item: Item, in layout: GridLayout) -> some View {
        let index = items.firstIndex(matching: item)!
        return Group {
            viewForItem(item).frame(width: layout.itemSize.width, height: layout.itemSize.height)
                .position(layout.location(ofItemAt: index))
        }
    }
}
