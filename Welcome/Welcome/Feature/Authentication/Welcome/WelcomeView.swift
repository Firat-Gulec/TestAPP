//
//  WelcomeView.swift
//  Welcome
//
//  Created by FiratGulec on 28.08.2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image(Images.background_auth.rawValue)
            Color(Colors.background_color.rawValue)
            VStack {
                Image(Icons.appLogo.rawValue).resizable().frame(width: 500,height: 500, alignment: .center)
                facebookLoginButton(onTap: {}).padding(Edge.Set.top, 2)
                googleLoginButton(onTap: {}).padding(Edge.Set.top, 2)
                appleLoginButton(onTap: {}).padding(Edge.Set.top, 2)
            }.padding(.paddingAll)
        }
    }
}


#Preview {
    WelcomeView()
}


