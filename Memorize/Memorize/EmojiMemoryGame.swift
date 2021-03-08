//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Leonid on 08.03.2021.
//

import Foundation

// ViewModel

class EmojiMemoryGame {
    private var game: MemoryGame<String> = createGame()
    
    static func createGame() -> MemoryGame<String> {
        let emojis = ["😀", "👍", "👻", "🛑", "🤪", "🤩", "🥎"].shuffled()
        let randomPair = Int.random(in: 2...5)
        return MemoryGame<String>(numberOfPairsOfCards: randomPair) { index in
            emojis[index]
        }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        game.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        game.choose(card: card)
    }
    
}
