//
//  ContentView.swift
//  resistorCalculator
//
//  Created by michellyes on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("O seu resistor é de:")
            Text("12 ohms")
            
            ResistorView()
            
            ColorPickerView()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
