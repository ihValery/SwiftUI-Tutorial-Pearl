//
//  BevelText.swift
//  GuessColor
//
//  Created by Валерий Игнатьев on 14.05.21.
//

import SwiftUI

struct BevelText: View {
    let text: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Text(text)
            .frame(maxWidth: width, maxHeight: height)
            .background(
                ZStack {
                    Capsule()
                        .fill(Color.element)
                        .shadowNorthWest(radius: 3, offset: 1)
                    Capsule()
                        .inset(by: 3)
                        .fill(Color.element)
                        .shadowSouthEast(radius: 1, offset: 1)
                })
    }
}

struct TextFrame_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.element
            BevelText(text: "R: ??? G: ??? B: ???", width: 200, height: 70)
        }
        .frame(width: 300, height: 300)
        .previewLayout(.sizeThatFits)
    }
}
