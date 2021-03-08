//
//  ContentView.swift
//  Memorize
//
//  Created by Leonid on 02.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    var game: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(game.cards) { card in
                CardView(card: card)
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(game.cards.count > 9 ? .caption : .largeTitle)
    }
}

struct CardView: View {
    
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                Text(card.content)
            }
            else {
                RoundedRectangle(cornerRadius: 10)
                    .fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(game: EmojiMemoryGame())
    }
}
