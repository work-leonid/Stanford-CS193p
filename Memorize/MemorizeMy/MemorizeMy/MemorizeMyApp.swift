//
//  MemorizeMyApp.swift
//  MemorizeMy
//
//  Created by Leonid on 24.03.2021.
//

import SwiftUI

@main
struct MemorizeMyApp: App {
    
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
