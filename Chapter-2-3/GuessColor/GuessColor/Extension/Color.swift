//
//  Color.swift
//  GuessColor
//
//  Created by Валерий Игнатьев on 14.05.21.
//

import SwiftUI

extension Color {
  /// Создается представление Color из объекта RGB.
  ///     - rgb: RGB объект.
  init(rgbStruct rgb: RGB) {
    self.init(red: rgb.red, green: rgb.green, blue: rgb.blue)
  }
}

extension Color {
    static var element = Color("Element")
    static var highlight = Color("Highlight")
    static var shadow = Color("Shadow")
}
