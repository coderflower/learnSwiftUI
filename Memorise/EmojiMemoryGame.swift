//
//  EmojiMemoryGame.swift
//  Memorise
//
//  Created by 蔡龙君 on 2020/6/25.
//  Copyright © 2020 蔡龙君. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "😪", "💀"]
        return MemoryGame(numberOfPairsOfCards: emojis.count) {
            emojis[$0]
        }
    }
    
    // MARK: - Access to the Model
    var cards: [MemoryGame<String>.Card] {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    func reset() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
