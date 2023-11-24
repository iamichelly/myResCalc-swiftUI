//
//  ResistorModel.swift
//  resistorCalculator
//
//  Created by michellyes on 23/11/23.
//

import Foundation
import SwiftUI

class ResistorModel: ObservableObject {
    @Published var firstBand: FirstBand
    @Published var secondBand: FirstBand
    @Published var multiplierBand: MultiplierBand
    @Published var toleranceBand: ToleranceBand
    @Published var resistorValue:  Double
    @Published var toleranceValue:  Double

    init() {
        self.firstBand = FirstBand(firstBandcolor: .black)
        self.secondBand = FirstBand(firstBandcolor: .black)
        self.multiplierBand = MultiplierBand(multiplierBandColor: .black)
        self.toleranceBand = ToleranceBand(toleranceBandColor: .brown)
        self.resistorValue = 0.0
        self.toleranceValue = 1.0
    }
    
    func calculateResistor(){
        let value: Double
        value = (firstBand.getValue()*10 + secondBand.getValue())*multiplierBand.getValue()
        self.resistorValue = value
        self.toleranceValue = toleranceBand.getValue()
    }
}
