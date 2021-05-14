//
//  ContentView.swift
//  GuessColor
//
//  Created by Валерий Игнатьев on 14.05.21.
//

import SwiftUI

struct ContentView: View {
    @State var game = Game()
    @State var guess: RGB
    @State var showScore = false
    
    var target = RGB.random()
    
    let labelWidth: CGFloat = 0.53
    let labelHeight: CGFloat = 0.06
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.element
                    .ignoresSafeArea()
                VStack {
                    BevelText(text: "Угадай цвет",
                              width: .infinity,
                              height: geometry.size.height * labelHeight)
                        .foregroundColor(.orange)
                    
                    CapsuleColor(rgbColor: game.target)
                    
                    if showScore {
                        BevelText(text: game.target.intString(),
                                  width: geometry.size.width * labelWidth,
                                  height: geometry.size.height * labelHeight)
                    } else {
                        BevelText(text: "R: ??? G: ??? B: ???",
                                  width: geometry.size.width * labelWidth,
                                  height: geometry.size.height * labelHeight)
                    }
                    
                    CapsuleColor(rgbColor: guess)
                    BevelText(text: guess.intString(),
                              width: geometry.size.width * labelWidth,
                              height: geometry.size.height * labelHeight)
                    
                    SliderGC(value: $guess.red, trackColor: .red)
                    SliderGC(value: $guess.green, trackColor: .green)
                    SliderGC(value: $guess.blue, trackColor: .blue)
                                        
                    ButtonForScore(showScore: $showScore, game: $game, guess: $guess)
                }
                .font(.headline)
                .padding(.horizontal)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(guess: RGB())
//            .preferredColorScheme(.dark)
    }
}
