//
//  ToleranceBand.swift
//  resistorCalculator
//
//  Created by michellyes on 21/11/23.
//

import Foundation
import SwiftUI

enum ToleranceBandColor {
    case brown, red, green, blue, purple, grey, golden, silver
    
    func getColor() -> Color {
        switch self {
        case .brown:
            BandColor.brown.getColor()
        case .red:
            BandColor.red.getColor()
        case .green:
            BandColor.green.getColor()
        case .blue:
            BandColor.blue.getColor()
        case .purple:
            BandColor.purple.getColor()
        case .grey:
            BandColor.grey.getColor()
        case .golden:
            BandColor.golden.getColor()
        case .silver:
            BandColor.silver.getColor()
        }
    }
}

class ToleranceBand: Band {
    var toleranceBandValue: Double
    var toleranceBandColor: ToleranceBandColor
    
    init(toleranceBandValue: Double, toleranceBandColor: ToleranceBandColor) {
        self.toleranceBandValue = toleranceBandValue
        self.toleranceBandColor = toleranceBandColor
        super.init(color: toleranceBandColor.getColor())
    }
    
    func loadValue() {
        switch toleranceBandColor {
        case .brown:
            toleranceBandValue = 1
        case .red:
            toleranceBandValue = 2
        case .green:
            toleranceBandValue = 0.5
        case .blue:
            toleranceBandValue = 0.25
        case .purple:
            toleranceBandValue = 0.1
        case .grey:
            toleranceBandValue = 0.05
        case .golden:
            toleranceBandValue = 5
        case .silver:
            toleranceBandValue = 10
        }
    }
    
    
}

