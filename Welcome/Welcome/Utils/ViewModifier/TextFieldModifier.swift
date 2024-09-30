//
//  TextFieldModifier.swift
//  Welcome
//
//  Created by FiratGulec on 30.09.2024.
//

import Foundation
import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content ) -> some View {
        return content.background(Color.gray.opacity(0.2))
            .cornerRadius(RadiusItems.radius)
    }
}
