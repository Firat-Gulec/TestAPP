//
//  AppleButton.swift
//  Welcome
//
//  Created by FiratGulec on 28.08.2024.
//

import SwiftUI

struct appleLoginButton: View {
    var onTap: () -> Void
    var body: some View {
        Button{
            onTap()
        }label: {
            HStack {
                Image(Icons.appleLogo.rawValue)
                Text(LocalizedStringResource("signinApple"))
                //Spacer()
            }.frame(width: 300)
            .tint(.white)
            .font(.title2)
            .padding(.all,PagePadding.All.normal.rawValue)
        }
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.gray)
        .cornerRadius(RadiusItems.radius)
    }
}

#Preview {
    appleLoginButton(onTap: {})
}

