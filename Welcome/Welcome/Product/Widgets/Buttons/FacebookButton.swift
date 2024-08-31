//
//  FacebookButton.swift
//  Welcome
//
//  Created by FiratGulec on 28.08.2024.
//

import SwiftUI

struct facebookLoginButton: View {
    var onTap: () -> Void
    var body: some View {
        Button{
            onTap()
        }label: {
            HStack {
                Image(Icons.facebookLogo.rawValue)
                //Text("Sign In with Facebook")
                 Text(LocalizedStringResource("signinFacebook"))
                //Spacer()
            }.frame(width: 300)
            .tint(.white)
            .font(.title2)
            .padding(.all,PagePadding.All.normal.rawValue)
        }
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.blue)
        .cornerRadius(RadiusItems.radius)
    }
}


#Preview {
    facebookLoginButton( onTap: {})
}


