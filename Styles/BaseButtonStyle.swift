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
    
    var variant: Variant
    var size: Size
    
    init(variant: Variant, size: Size = .regular) {
        self.variant = variant
        self.size = size
    }
}

struct PressableBrandButtonStyle: ButtonStyle {
    
    let scaleAmount: CGFloat
    
    init(scaleAmount: CGFloat) {
        self.scaleAmount = scaleAmount
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? scaleAmount : 1.0)
    }
}
