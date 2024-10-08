//
//  GoogleButton.swift
//  Welcome
//
//  Created by FiratGulec on 28.08.2024.
//

import SwiftUI

struct googleLoginButton: View {
    var onTap: () -> Void
    var body: some View {
        Button{
            onTap()
        }label: {
            HStack {
                Image(Icons.googleLogo.rawValue)
                Text(LocalizedStringResource("signinGoogle"))
                //Spacer()
            }.frame(width: 300)
            .tint(.black)
            .font(.title2)
            .padding(.all,PagePadding.All.normal.rawValue)
        }
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.white)
        .cornerRadius(RadiusItems.radius)
    }
}

#Preview {
    googleLoginButton(onTap: {})
}
