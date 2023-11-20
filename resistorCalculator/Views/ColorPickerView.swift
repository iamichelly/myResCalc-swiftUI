//
//  ColorPickerView.swift
//  resistorCalculator
//
//  Created by michellyes on 17/11/23.
//

import SwiftUI

struct ColorPickerView: View {
    var body: some View {
        Text("Selecione a cor:")
        
        HStack{
            ColorButton(bandTitle: "1st band")
            ColorButton(bandTitle: "2nd band")
            ColorButton(bandTitle: "Multiplier")
            ColorButton(bandTitle: "Tolerance")
        }

    }
}

#Preview {
    ColorPickerView()
}
