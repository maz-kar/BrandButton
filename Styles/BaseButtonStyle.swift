//
//  BaseButtonStyle.swift
//  TrivagoCS
//
//  Created by Maziar Layeghkar on 28.02.24.
//

import Foundation
import SwiftUI

struct BaseButtonStyle {
    enum Variant {
        case primaryGreen
        case primaryBlue
        case primaryDisabled
        case secondaryGreen
        case secondaryBlue
        case secondaryDisabled
        case baseButton
    }
    
    enum Size {
        case regular
        case medium
    }
}

struct PressableBrandButtonStyle: ButtonStyle {
    
    let scaleAmount: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? scaleAmount : 1.0)
    }
}
