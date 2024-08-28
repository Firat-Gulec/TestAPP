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
            }
            .tint(.white)
        }
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
    }
}
