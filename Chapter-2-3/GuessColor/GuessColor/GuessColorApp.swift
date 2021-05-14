//
//  GuessColorApp.swift
//  GuessColor
//
//  Created by Валерий Игнатьев on 14.05.21.
//

import SwiftUI

@main
struct GuessColorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(guess: RGB())
        }
    }
}
