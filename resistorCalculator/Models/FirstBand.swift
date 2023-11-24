//
//  FirstBand.swift
//  resistorCalculator
//
//  Created by michellyes on 21/11/23.
//

import Foundation
import SwiftUI

enum FirstBandColor {
    case black, brown, red, orange, yellow, green, blue, purple, grey, white
    
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
        case .grey:
            BandColor.grey.getColor()
        case .white:
            BandColor.white.getColor()
        }
    }
}

class FirstBand: Band {
    @Published var firstBandValue: Double
    @Published var firstBandcolor: FirstBandColor
    
    init(firstBandcolor: FirstBandColor) {
        self.firstBandValue = 0
        self.firstBandcolor = firstBandcolor
    
        super.init(color: BandColor.black)
    }
    
    override func getColor() -> Color {
        return firstBandcolor.getColor()
    }
    
    override func formatValue() -> String {
        return String(format: "%.0f", getValue())
    }
    
    override func getValue() -> Double {
        return firstBandValue
    }
    
    override func changeBandColor() {
        let allColors: [FirstBandColor] = [.black, .brown, .red, .orange, .yellow, .green, .blue, .purple, .grey, .white]
        if let currentIndex = allColors.firstIndex(of: firstBandcolor) {
            let nextIndex = (currentIndex + 1) % allColors.count
            firstBandcolor = allColors[nextIndex]
            loadValue()
        }
    }

    func loadValue() {
        switch firstBandcolor {
        case .black:
             firstBandValue = 0
        case .brown:
             firstBandValue = 1
        case .red:
             firstBandValue = 2
        case .orange:
             firstBandValue = 3
        case .yellow:
             firstBandValue = 4
        case .green:
             firstBandValue = 5
        case .blue:
             firstBandValue = 6
        case .purple:
              firstBandValue = 7
        case .grey:
             firstBandValue = 8
        case .white:
             firstBandValue = 9
        }
    }
    
}

