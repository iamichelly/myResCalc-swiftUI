//
//  ColorPickerView.swift
//  resistorCalculator
//
//  Created by michellyes on 17/11/23.
//

import SwiftUI

struct ColorPickerView: View {
    @ObservedObject var resistorModel: ResistorModel
    @Binding var firstBandColor: Color
    @Binding var secondBandColor: Color
    @Binding var multiplierBandColor: Color
    @Binding var toleranceBandColor: Color
    
    var body: some View {
        Text("Selecione a cor:")
            .font(.system(size: Responsive.scale(s: 24)))
            .foregroundColor(.white)
            .padding(.bottom, Responsive.scale(s: 8))
        
        HStack{
            ColorButton(bandTitle: "1st band", band: resistorModel.firstBand, color: $firstBandColor, resistorModel: resistorModel)
            ColorButton(bandTitle: "2nd band", band: resistorModel.secondBand, color: $secondBandColor, resistorModel: resistorModel)
            ColorButton(bandTitle: "Multiplier", band: resistorModel.multiplierBand, color: $multiplierBandColor, resistorModel: resistorModel)
            ColorButton(bandTitle: "Tolerance", band: resistorModel.toleranceBand, color: $toleranceBandColor, resistorModel: resistorModel)
        }
    }
}

//#Preview {
//    ColorPickerView()
//}
