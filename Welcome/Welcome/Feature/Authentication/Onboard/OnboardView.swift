//
//  OnboardView.swift
//  Welcome
//
//  Created by FiratGulec on 31.08.2024.
//

import SwiftUI

struct OnboardView: View {
    @State var currentIndex = 0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                    Image(Images.background_auth.rawValue).resizable()
                    Color(Colors.background_color.rawValue)
                HStack{
                    VStack{
                        Spacer()
                        TabView(
                            //selection: $currentIndex,
                            content:
                                    {
                            VStack{
                                Image(Images.onboarding_1.rawValue).resizable().scaledToFit()
                                Text(LocalizedStringResource("Ride Hard or Stay Home")).font(.largeTitle)
                            }
                            VStack{
                                Image(Images.onboarding_2.rawValue).resizable().scaledToFit()
                                Text(LocalizedStringResource("Ride Hard or Stay Home")).font(.largeTitle)
                                
                            }
                            VStack{
                                Image(Images.onboarding_3.rawValue).resizable().scaledToFit()
                                Text(LocalizedStringResource("Ride Hard or Stay Home")).font(.largeTitle)
                            }
                        }
                        ).tabViewStyle(.page)
                        Spacer()
                        HStack{
                            /*  ForEach((0...2), id: \.self) { index
                                in
                                if(index == currentIndex) {
                                    IndicatorRectangle(width: 50)
                                }else {
                                    IndicatorRectangle(width: 20)
                                }}*/
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

