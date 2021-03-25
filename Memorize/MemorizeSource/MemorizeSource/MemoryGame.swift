//
//  MemoryGame.swift
//  MemorizeSource
//
//  Created by Leonid on 24.03.2021.
//

// Model
import SwiftUI

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print(card)
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> (CardContent)) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isMatched: Bool = false
        var isFaceUp: Bool = false
        var content: CardContent
        var id: Int
    }
}

