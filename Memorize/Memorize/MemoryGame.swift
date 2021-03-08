//
//  MemoryGame.swift
//  Memorize
//
//  Created by Leonid on 08.03.2021.
//

import Foundation

// Model
struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, createContentFactory: (Int) -> (CardContent)) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    func choose(card: Card) {
        print(card)
    }
    
    struct Card: Identifiable {
        var isMatched: Bool = false
        var isFaceUp: Bool = true
        var content: CardContent
        var id: Int
    }
}
