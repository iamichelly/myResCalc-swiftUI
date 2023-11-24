//
//  Responsive.swift
//  resistorCalculator
//
//  Created by michellyes on 24/11/23.
//

import Foundation
import SwiftUI

class Responsive {
    static func scale(s: CGFloat) -> CGFloat {
        s * UIScreen.main.bounds.width/390
    }
}
