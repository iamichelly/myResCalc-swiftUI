//
//  ColorButton.swift
//  resistorCalculator
//
//  Created by michellyes on 17/11/23.
//

import SwiftUI

struct ColorButton: View {
    
    let bandTitle: String
    @ObservedObject var band: Band
    @Binding var color: Color
    @ObservedObject var resistorModel: ResistorModel
    
    var body: some View {
        VStack{
            Text(bandTitle)
                .font(.system(size: Responsive.scale(s: 16)))
                .foregroundColor(.white)
                
            Button(action: {
                if let band = band as? Band {
                    band.changeBandColor()
                    color = band.getColor()
                    resistorModel.calculateResistor()
                }
            }, label: {
                ZStack{
                    Rectangle()
                        .foregroundColor(band.getColor())
                        .frame(width: Responsive.scale(s: 78), height: Responsive.scale(s: 78))
                    Text(band.formatValue())
                        .font(.system(size: Responsive.scale(s: 18)))
                        .foregroundColor(.white)
                }
                .frame(width: Responsive.scale(s: 80), height: Responsive.scale(s: 80))
                .background(.white)
            })
            .buttonStyle(PlainButtonStyle())
        }
    }
}

//#Preview {
//    ColorButton()
//}
