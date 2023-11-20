//
//  ColorButton.swift
//  resistorCalculator
//
//  Created by michellyes on 17/11/23.
//

import SwiftUI

struct ColorButton: View {
    
    let bandTitle: String
    
    var body: some View {
        VStack{
            Text(bandTitle)
            ZStack{
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 78, height: 78)
                Text("100")
                    .foregroundColor(.white)
            }
            .frame(width: 80, height: 80)
            .background(.green)
        }
    }
}

#Preview {
    ColorButton(bandTitle: "1st band")
}
