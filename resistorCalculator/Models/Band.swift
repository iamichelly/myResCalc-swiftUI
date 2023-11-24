//
//  Band.swift
//  resistorCalculator
//
//  Created by michellyes on 21/11/23.
//

import Foundation
import SwiftUI

enum BandType {
    case firstBand(FirstBandColor)
    case secondBand(FirstBandColor)
    case multiplierBand(MultiplierBandColor)
    case toleranceBand(ToleranceBandColor)
}

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
            return Color(red: 218, green: 156, blue: 32)
        case .silver:
            return Color(red: 192, green: 192, blue: 192)
        }
    }
}

class Band: ObservableObject {
    @Published var color: BandColor
    
    init(color: BandColor) {
        self.color = color
    }
    
    func getColor() -> Color {
        return color.getColor()
    }
    
    func formatValue() -> String {
        return String(format: "%.2f", getValue())
    }
    
    func getValue() -> Double {
        return 0
    }
    
    func changeBandColor() {
    }
   
}
