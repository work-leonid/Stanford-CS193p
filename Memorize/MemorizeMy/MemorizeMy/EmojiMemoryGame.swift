//
//  EmojiMemoryGame.swift
//  MemorizeMy
//
//  Created by Leonid on 25.03.2021.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = createGame()
    
    static func createGame() -> MemoryGame<String> {
        let emojis = ["👻", "😀", "👍"]
        return MemoryGame<String>(numberOfpairsOfCards: emojis.count) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}
