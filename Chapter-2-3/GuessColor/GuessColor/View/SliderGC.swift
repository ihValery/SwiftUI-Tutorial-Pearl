//
//  SliderGC.swift
//  GuessColor
//
//  Created by Валерий Игнатьев on 14.05.21.
//

import SwiftUI

struct SliderGC: View {
    @Binding var value: Double
    let trackColor: Color
    
    var body: some View {
        HStack {
            Text("0")
            Slider(value: $value)
                .accentColor(trackColor)
            Text("255")
        }
    }
}

struct SliderGC_Previews: PreviewProvider {
    static var previews: some View {
        SliderGC(value: .constant(0.5), trackColor: .red)
            .previewLayout(.sizeThatFits)
    }
}
