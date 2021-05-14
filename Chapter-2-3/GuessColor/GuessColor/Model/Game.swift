//
//  Game.swift
//  GuessColor
//
//  Created by Валерий Игнатьев on 14.05.21.
//

import Foundation

struct Game {
  let start = RGB()
  var target = RGB.random()
  var round = 1
  var scoreRound = 0
  var scoreTotal = 0

  /// Проверка угаданных значений объекта RGB по целевому объекту RGB.
  /// Вычислите количество баллов из 100. Добавьте бонусные баллы за очень высокие результаты.
  ///   - parameters:
  ///     - guess: Объект RGB с угаданными значениями.
  mutating func check(guess: RGB) {
    let difference = lround(guess.difference(target: target) * 100.0)
    scoreRound = 100 - difference
    if difference == 0 {
      scoreRound += 100
    } else if difference == 1 { scoreRound += 50 }
    scoreTotal += scoreRound
  }

  /// Начните новый раунд со случайным целевым объектом RGB.
  mutating func startNewRound() {
    round += 1
    scoreRound = 0
    target = RGB.random()
  }

  /// Начать новую игру: Сбросить общий счет до 0.
  mutating func startNewGame() {
    round = 0
    scoreTotal = 0
    startNewRound()
  }
}
