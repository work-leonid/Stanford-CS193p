//
//  MemorizeSourceApp.swift
//  MemorizeSource
//
//  Created by Leonid on 24.03.2021.
//

import SwiftUI

@main
struct MemorizeSourceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}
