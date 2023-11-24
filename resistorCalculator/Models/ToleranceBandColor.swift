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
    @Published var toleranceBandValue: Double
    @Published var toleranceBandColor: ToleranceBandColor
    
    init(toleranceBandColor: ToleranceBandColor) {
        self.toleranceBandValue = 1
        self.toleranceBandColor = toleranceBandColor
        
        super.init(color: BandColor.brown)
    }
    
    override func getColor() -> Color {
        return toleranceBandColor.getColor()
    }
    
    override func getValue() -> Double {
        return toleranceBandValue
    }
    
    override func changeBandColor() {
        let allColors: [ToleranceBandColor] = [.brown, .red, .green, .blue, .purple, .grey, .golden, .silver]
        if let currentIndex = allColors.firstIndex(of: toleranceBandColor) {
            let nextIndex = (currentIndex + 1) % allColors.count
            toleranceBandColor = allColors[nextIndex]
            loadValue()
        }
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

