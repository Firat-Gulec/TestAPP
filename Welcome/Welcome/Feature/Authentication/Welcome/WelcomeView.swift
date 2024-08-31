//
//  WelcomeView.swift
//  Welcome
//
//  Created by FiratGulec on 28.08.2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                
                Image(Images.background_auth.rawValue).resizable()
                Color(Colors.background_color.rawValue)
                
                HStack {
                    VStack {
                        Spacer()
                        
                        Image(Icons.appKLogo2.rawValue).resizable().frame(width: 300,height: 300)
                        Spacer()
                        facebookLoginButton(onTap: {}).padding(Edge.Set.top, 2)
                        googleLoginButton(onTap: {}).padding(Edge.Set.top, 2)
                        appleLoginButton(onTap: {}).padding(Edge.Set.top, 2)
                        Divider()
                            .background(Color.black)
                            .frame(width: 300, height: 2)
                            .padding(.all,PagePadding.All.normal.rawValue)
                        CustomButton(onTap: {}).padding(Edge.Set.top, 2)
                        Spacer().frame(height: geometry.size.height / 30)
                        
                    }.padding(.paddingAll)
                }
            }
        }
    }
}


#Preview {
    WelcomeView().ignoresSafeArea(.all)
}


