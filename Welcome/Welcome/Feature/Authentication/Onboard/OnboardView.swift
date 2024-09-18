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
                        Spacer()
                        TabView(content:
                                    {
                            VStack{
                                Image(Images.onboarding_1.rawValue).resizable().scaledToFit()
                                Text(LocalizedStringResource("Ride Hard or Stay Home"))
                            }
                            VStack{
                                Image(Images.onboarding_2.rawValue).resizable().scaledToFit()
                                Text(LocalizedStringResource("Ride Hard or Stay Home"))
                            }
                            VStack{
                                Image(Images.onboarding_3.rawValue).resizable().scaledToFit()
                                Text(LocalizedStringResource("Ride Hard or Stay Home"))
                            }
                        }
                        ).tabViewStyle(.page)
                    
                        Spacer()
                        HStack{
                        }.frame(height: 10)
                        NormalButton(onTap: {}, title: "Get Ready")
                        Spacer()
                        //Text(LocalizedStringResource("or"))
                        //Text(LocalizedStringResource("stayhome"))
                    }.padding(.all,PagePadding.All.normal.rawValue)
                    //.font(.system(size: 10)).bold().italic()
                }
                
                
            }
        }
    }
}



#Preview {
    OnboardView().ignoresSafeArea(.all)
}

