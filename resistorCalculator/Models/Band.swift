//
//  Band.swift
//  resistorCalculator
//
//  Created by michellyes on 21/11/23.
//

import Foundation
import SwiftUI

enum BandColor {
    case black, brown, red, orange, yellow, green, blue, purple, grey, white, golden, silver
    func getColor() -> Color {
        switch self {
        case .black:
            return .black
        case .brown:
            return .brown
        case .red:
            return .red
        case .orange:
            return .orange
        case .yellow:
            return .yellow
        case .green:
            return .green
        case .blue:
            return .blue
        case .purple:
            return .purple
        case .grey:
            return .gray
        case .white:
            return .white
        case .golden:
            return .clear
        case .silver:
            return .gray
        }
    }
}

class Band {
    var color: Color
    
    init(color: Color) {
        self.color = color
    }
}

