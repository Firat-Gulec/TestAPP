//
//  File.swift
//  Welcome
//
//  Created by FiratGulec on 31.08.2024.
//

import SwiftUI

struct CustomButton: View {
    var onTap: () -> Void
    var body: some View {
        Button{
            onTap()
        }label: {
            HStack {
                Text(LocalizedStringResource("signupwithEmail"))
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
    CustomButton(onTap: {})
}
