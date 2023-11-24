//
//  ContentView.swift
//  resistorCalculator
//
//  Created by michellyes on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var resistorModel = ResistorModel()
    @State var firstBandColor: Color = .black
    @State var secondBandColor: Color = .black
    @State var multiplierBandColor: Color = .black
    @State var toleranceBandColor: Color = .brown
   
    
    var body: some View {
        ZStack{
            VStack {
                Text("O seu resistor é de:")
                    .font(.system(size: Responsive.scale(s: 24)))
                    .foregroundColor(.white)
                    .padding(.bottom, Responsive.scale(s: 8))
                
                Text("\(String(format: "%.2f", resistorModel.resistorValue)) Ω ± \(String(format: "%.2f", resistorModel.toleranceValue))%")
                    .font(.system(size: Responsive.scale(s: 36)))
                    .foregroundColor(.white)
                ResistorView(resistorModel: resistorModel, firstBandColor: $firstBandColor, secondBandColor: $secondBandColor, multiplierBandColor: $multiplierBandColor, toleranceBandColor: $toleranceBandColor)
                ColorPickerView(resistorModel: resistorModel, firstBandColor: $firstBandColor, secondBandColor: $secondBandColor, multiplierBandColor: $multiplierBandColor, toleranceBandColor: $toleranceBandColor)
            }
            .padding()
        }
        .background(Image("background"))
        .edgesIgnoringSafeArea(.all)
    }
}

//#Preview {
//    ContentView()
//}
