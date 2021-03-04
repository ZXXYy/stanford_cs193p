//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 郑小叶 on 2021/3/4.
//

import SwiftUI


class EmojiMemoryGame{
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String>{
        let emojis: Array<String> = ["👻", "🎃", "🕷", "💀","🦴","🧛‍♂️","🧛‍♀️","🧙‍♀️","🪄","🦇","🤡","🍿","🥨","🍟","🥤"]
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2...5)){ pairIndex in
            return emojis[Int.random(in: 0..<15)]
        }
    }
        
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
