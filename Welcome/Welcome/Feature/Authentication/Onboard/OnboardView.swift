//
//  OnboardView.swift
//  Welcome
//
//  Created by FiratGulec on 31.08.2024.
//

import SwiftUI

struct OnboardView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                
                Image(Images.background_auth.rawValue).resizable()
                Color(Colors.background_color.rawValue)
                HStack{
                    VStack{
                        Text(LocalizedStringResource("ridehard"))
                        Text(LocalizedStringResource("or"))
                        Text(LocalizedStringResource("stayhome"))
                    }
                    .font(.system(size: 55)).bold().italic()
                }
                
                
            }
        }
    }
}


#Preview {
    OnboardView().ignoresSafeArea(.all)
}

