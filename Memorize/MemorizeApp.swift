//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 郑小叶 on 2021/3/4.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
