//
//  CustomButton 2.swift
//  Welcome
//
//  Created by FiratGulec on 18.09.2024.
//



import SwiftUI

struct NormalButton: View {
    var onTap: () -> Void
    var title: String
    var body: some View {
        Button{
            onTap()
        }label: {
            HStack {
                Text(LocalizedStringResource(stringLiteral: title))
                //Spacer()
            }.frame(width: 300)
            .tint(.white)
            .font(.title)
            .padding(.all,PagePadding.All.normal.rawValue)
        }
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.orange)
        .cornerRadius(RadiusItems.radius)
    }
}

#Preview {
    NormalButton(onTap: { },
                 title: "Get Ready")
}
