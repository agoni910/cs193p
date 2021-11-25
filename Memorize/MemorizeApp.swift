//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 蒋文荣 on 2021/10/4.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
