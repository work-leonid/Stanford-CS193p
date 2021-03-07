//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Leonid on 07.03.2021.
//

import SwiftUI

//ViewModel
class EmojiMemoryGame {
    private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "😀", "👍"]
        return MemoryGame<String>(numberPairsOfCards: emojis.count, createContentFactory: { pairIndex in
            return emojis[pairIndex]
        })
    }
    
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
