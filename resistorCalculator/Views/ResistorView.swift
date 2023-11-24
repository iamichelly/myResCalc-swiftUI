//
//  ResistorView.swift
//  resistorCalculator
//
//  Created by michellyes on 14/11/23.
//

import SwiftUI

struct ResistorView: View {
    @ObservedObject var resistorModel: Resistor
    @Binding var firstBandColor: Color
    @Binding var secondBandColor: Color
    @Binding var multiplierBandColor: Color
    @Binding var toleranceBandColor: Color

    var body: some View {
        ZStack{
            HStack{
                Rectangle()
                    .frame(width: 31, height: 110)
                    .padding(.leading, 180)
                    .foregroundColor(firstBandColor)
                    
                Rectangle()
                    .frame(width: 31, height: 89)
                    .padding(.leading, 40)
                    .padding(.trailing, 10)
                    .foregroundColor(secondBandColor)
                    
                Rectangle()
                    .frame(width: 31, height: 89)
                    .padding(.trailing, 40)
                    .padding(.leading, 10)
                    .foregroundColor(multiplierBandColor)
                    
                Rectangle()
                    .frame(width: 31, height: 110)
                    .padding(.trailing, 180)
                    .foregroundColor(toleranceBandColor)
            }
        }
        .background(Image("resistor-base"))
        .padding(.bottom, 50)
        
    }
}

//#Preview {
//    ResistorView()
//}
