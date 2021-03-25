//
//  MemoryGame.swift
//  MemorizeMy
//
//  Created by Leonid on 25.03.2021.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print(card)
    }
    
    init(numberOfpairsOfCards: Int, cardContentFactory: (Int) -> (CardContent)) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfpairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
