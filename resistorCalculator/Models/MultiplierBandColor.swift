//
//  MultiplierBand.swift
//  resistorCalculator
//
//  Created by michellyes on 21/11/23.
//

import Foundation
import SwiftUI

enum MultiplierBandColor {
    case black, brown, red, orange, yellow, green, blue, purple, golden, silver
    
    func getColor() -> Color {
        switch self {
        case .black:
            BandColor.black.getColor()
        case .brown:
            BandColor.brown.getColor()
        case .red:
            BandColor.red.getColor()
        case .orange:
            BandColor.orange.getColor()
        case .yellow:
            BandColor.yellow.getColor()
        case .green:
            BandColor.green.getColor()
        case .blue:
            BandColor.blue.getColor()
        case .purple:
            BandColor.purple.getColor()
        case .golden:
            BandColor.golden.getColor()
        case .silver:
            BandColor.silver.getColor()
        }
    }
}

class MultiplierBand: Band {
    var multiplierBandValue: Double
    var multiplierBandColor: MultiplierBandColor
    
    init(multiplierBandValue: Double, multiplierBandColor: MultiplierBandColor) {
        self.multiplierBandValue = multiplierBandValue
        self.multiplierBandColor = multiplierBandColor
        super.init(color: multiplierBandColor.getColor())
    }
    
    func loadValue() {
        switch multiplierBandColor {
        case .black:
             multiplierBandValue = 1
        case .brown:
             multiplierBandValue = 10
        case .red:
             multiplierBandValue = 100
        case .orange:
             multiplierBandValue = 1000
        case .yellow:
             multiplierBandValue = 10000
        case .green:
             multiplierBandValue = 100000
        case .blue:
             multiplierBandValue = 1000000
        case .purple:
             multiplierBandValue = 10000000
        case .golden:
             multiplierBandValue = 0.1
        case .silver:
             multiplierBandValue = 0.01
        }
        
    }
}

