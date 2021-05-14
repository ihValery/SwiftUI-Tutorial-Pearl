//
//  NeuButtonStyle.swift
//  GuessColor
//
//  Created by Валерий Игнатьев on 14.05.21.
//

import SwiftUI
//При создании пользовательского стиля кнопки теряется цвет метки по умолчанию
// и визуальная обратная связь по умолчанию, когда пользователь нажимает на кнопку.

struct NeuButtonStyle: ButtonStyle {
    let width: CGFloat
    let height: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: width, maxHeight: height)
            .opacity(configuration.isPressed ? 0.2 : 1)
            .background(
                Group {
                    if configuration.isPressed {
                        Capsule()
                            .fill(Color.element)
                    } else {
                        Capsule()
                            .fill(Color.element)
                            .shadowNorthWest()
                    }
                })
            .foregroundColor(.orange)
    }
}
