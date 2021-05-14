//
//  ButtonForScore.swift
//  GuessColor
//
//  Created by Валерий Игнатьев on 14.05.21.
//

import SwiftUI

struct ButtonForScore: View {
    @Binding var showScore: Bool
    @Binding var game: Game
    @Binding var guess: RGB
    
    var body: some View {
        Button(action: {
            showScore = true
            game.check(guess: guess)
        }) {
            Text("Узнать результат!")
        }
        .buttonStyle(NeuButtonStyle(width: .infinity, height: 48))
        .alert(isPresented: $showScore) {
            Alert(title: Text("Твой счет"),
                  message: Text(String(game.scoreRound)),
                  dismissButton: .default(Text("Ok")) {
                    game.startNewRound()
                    guess = RGB()
                  })
        }
    }
}

struct ButtonForScore_Previews: PreviewProvider {
    static var previews: some View {
        ButtonForScore(showScore: .constant(false), game: .constant(Game()), guess: .constant(RGB()))
            .previewLayout(.sizeThatFits)
    }
}
