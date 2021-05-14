//
//  RGB.swift
//  GuessColor
//
//  Created by Валерий Игнатьев on 14.05.21.
//

import Foundation

struct RGB {
  var red = 0.5
  var green = 0.5
  var blue = 0.5

  /// Создайет объект RGB со случайными значениями.
  static func random() -> RGB {
    var rgb = RGB()
    rgb.red = Double.random(in: 0..<1)
    rgb.green = Double.random(in: 0..<1)
    rgb.blue = Double.random(in: 0..<1)
    return rgb
  }

  /// Вычислят нормализованное 3-мерное расстояние до другого объекта RGB.
  ///   - parameters:
  ///     - target: Другой RGB объект.
  func difference(target: RGB) -> Double {
    let rDiff = red - target.red
    let gDiff = green - target.green
    let bDiff = blue - target.blue
    return sqrt(
      (rDiff * rDiff + gDiff * gDiff + bDiff * bDiff) / 3.0)
  }

    //Здесь используется (только для чтения) значения предположения, а не меняете их, поэтому вам не нужен префикс $
  /// Создайте строку, представляющую целочисленные значения объекта RGB.
  func intString() -> String {
    "R: \(Int(red * 255))" + "  G: \(Int(green * 255))" + "  B: \(Int(blue * 255))"
  }
}
