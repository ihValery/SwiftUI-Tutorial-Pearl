//
//  CapsuleColor.swift
//  GuessColor
//
//  Created by Валерий Игнатьев on 14.05.21.
//

import SwiftUI

struct CapsuleColor: View {
    let rgbColor: RGB
    
    var body: some View {
        ZStack {
            Capsule()
                .fill(Color.element)
                .shadowNorthWest()
            Capsule()
                .inset(by: 15)
                .fill(Color(rgbStruct: rgbColor))
        }
    }
}

struct FrameColor_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.element
            CapsuleColor(rgbColor: RGB())
                .frame(width: 300, height: 200)
        }
        .previewLayout(.sizeThatFits)
        .frame(width: 400, height: 400)
    }
}
