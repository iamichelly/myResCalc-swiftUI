//
//  ResistorView.swift
//  resistorCalculator
//
//  Created by michellyes on 14/11/23.
//

import SwiftUI

struct ResistorView: View {
    var body: some View {
        ZStack{
            HStack{
                Rectangle()
                    .frame(width: 31, height: 187)
                    .padding(.leading, 50)
                    .foregroundColor(.red)
                    
                Rectangle()
                    .frame(width: 31, height: 153)
                    .padding(.trailing, 40)
                    .padding(.leading, 60)
                    .foregroundColor(.black)
                    
                Rectangle()
                    .frame(width: 31, height: 153)
                    .padding(.trailing, 160)
                    .foregroundColor(.red)
                    
                Rectangle()
                    .frame(width: 31, height: 187)
                    .padding(.trailing, 40)
                    .foregroundColor(.gray)
            }
        }
        .background(Image("resistor-base"))
        .padding(.bottom, 50)
    }
}

#Preview {
    ResistorView()
}
