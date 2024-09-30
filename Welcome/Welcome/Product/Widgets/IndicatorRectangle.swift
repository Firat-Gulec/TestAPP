//
//  IndicatorRectangle.swift
//  Welcome
//
//  Created by FiratGulec on 18.09.2024.
//

import SwiftUI

struct IndicatorRectangle: View {
    var width: Double
    var body: some View {
        Rectangle()
            .fill(.gray)
            .cornerRadius(RadiusItems.radius).frame(width: width)
    }
}

#Preview {
    IndicatorRectangle(width:20)
}
