//
//  ContentView.swift
//  Memorize
//
//  Created by 郑小叶 on 2021/3/4.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    var body: some View {
        let allCards = HStack() {
            ForEach(viewModel.cards) { card in
                CardView(card: card ).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        }
            .padding()
            .foregroundColor(Color.orange)
        return (viewModel.cards.count==5*2) ? allCards.font(.body) : allCards.font(.largeTitle)
        
    }
}

struct CardView: View{
    var card: MemoryGame<String>.Card
    var body: some View{
        ZStack() {
            if card.isFaceUp{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
        .aspectRatio(2.0/3, contentMode: .fit)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
