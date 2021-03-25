//
//  EmojiMemoryGame.swift
//  MemorizeSource
//
//  Created by Leonid on 24.03.2021.
//

// ViewModel
import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = createGame()
    
    static func createGame() -> MemoryGame<String> {
        let emojis = ["👻", "😀", "👍"]
        return MemoryGame<String>.init(numberOfPairsOfCards: emojis.count) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func chooseCard(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
