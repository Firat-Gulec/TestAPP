//
//  LoginView.swift
//  Welcome
//
//  Created by FiratGulec on 30.09.2024.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(Images.onboarding_3.rawValue).resizable().scaledToFit().padding(EdgeInsets.paddingAll)
            Text("Welcome Back!").font(.largeTitle)
            VStack {
                HTextField(hint:"Write your name", IconName:Icons.facebookLogo.rawValue)
                HTextSecureField(hint:"Write your password", IconName:Icons.facebookLogo.rawValue)

            }.padding(EdgeInsets.paddingAll)
            Divider().padding()
            NormalButton(onTap: {}, title: "createanaccount")
            Text("By clicking \"Create account\" I agree to the [IOS](www.com.vb) App Terms and [Privacy Policies](www.com.vb2)").padding(EdgeInsets.paddingAll).tint(.blue).foregroundColor(.gray)
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}

private struct HTextField: View {
    
    let hint: String
    let IconName: String
    var body: some View {
        
        HStack {
            Image(IconName).padding(.paddingAll)
            TextField( hint, text: .constant(""))
        }.modifier(TextFieldModifier())
    }
}
    
private struct HTextSecureField: View {
        
        let hint: String
        let IconName: String
        var body: some View {
            
            HStack {
                Image(IconName).padding(.paddingAll)
                SecureField( hint, text: .constant(""))
            }.modifier(TextFieldModifier())
        }
}
    
