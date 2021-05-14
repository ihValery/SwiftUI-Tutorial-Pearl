//
//  Shadow.swift
//  GuessColor
//
//  Created by Валерий Игнатьев on 14.05.21.
//

import SwiftUI

extension View {
    func shadowNorthWest(radius: CGFloat = 16, offset: CGFloat = 6) -> some View {
        return self
            .shadow(color: .highlight, radius: radius, x: -offset, y: -offset)
            .shadow(color: .shadow, radius: radius, x: offset, y: offset)
    }
    
    func shadowSouthEast(radius: CGFloat = 16, offset: CGFloat = 6) -> some View {
        return self
            .shadow(color: .shadow, radius: radius, x: -offset, y: -offset)
            .shadow(color: .highlight, radius: radius, x: offset, y: offset)
    }
}

