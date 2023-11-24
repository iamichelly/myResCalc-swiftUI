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
            return .myBrown
        case .red:
            return .myRed
        case .orange:
            return .myOrange
        case .yellow:
            return .myYellow
        case .green:
            return .myGreen
        case .blue:
            return .blue
        case .purple:
            return .myPurple
        case .grey:
            return .myGray
        case .white:
            return .white
        case .golden:
            return .golden
        case .silver:
            return .silver
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

extension Color {
    static let myGray = Color(UIColor(red: 113/255.0, green: 113/255.0, blue: 113/255.0, alpha: 1.0))
    static let golden = Color(UIColor(red: 212/255.0, green: 175/255.0, blue: 55/255.0, alpha: 1.0))
    static let silver = Color(UIColor(red: 160/255.0, green: 160/255.0, blue: 160/255.0, alpha: 1.0))
    static let myBrown = Color(UIColor(red: 78/255.0, green: 54/255.0, blue: 34/255.0, alpha: 1.0))
    static let myYellow = Color(UIColor(red: 255/255.0, green: 237/255.0, blue: 26/255.0, alpha: 1.0))
    static let myRed = Color(UIColor(red: 198/255.0, green: 36/255.0, blue: 19/255.0, alpha: 1.0))
    static let myOrange = Color(UIColor(red: 227/255.0, green: 114/255.0, blue: 0/255.0, alpha: 1.0))
    static let myGreen = Color(UIColor(red: 27/255.0, green: 83/255.0, blue: 31/255.0, alpha: 1.0))
    static let myPurple = Color(UIColor(red: 119/255.0, green: 5/255.0, blue: 198/255.0, alpha: 1.0))
}
