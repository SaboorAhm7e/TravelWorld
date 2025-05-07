//
//  SplashView.swift
//  TravelWorld
//
//  Created by saboor on 07/05/2025.
//

import SwiftUI

struct SplashView: View {
    @AppStorage("isSplahPresent") var isSplahPresent : Bool = false
    var body: some View {
        ZStack {
            Image("splashBG")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                    .frame(height:100)
                VStack(spacing:28) {
                    Text("travel the")
                        .font(.custom("OoohBaby-Regular", size: 32))
                    Text("World")
                        .font(.custom("OleoScript-Bold", size: 64))
                }
                .foregroundColor(Color.white)
                
                
                Spacer()
                
                Button {
                    isSplahPresent = true
                } label: {
                    HStack(spacing:10) {
                        Text("Let's Go")
                        Image(systemName: "arrow.right.circle")
                    }
                    .frame(maxWidth:.infinity)
                }
                .buttonStyle(MainButtonStyle())
                .padding(.horizontal,16)
                

            }
        }
        .onAppear {
            for family in UIFont.familyNames {
                print("Family: \(family)")
                for name in UIFont.fontNames(forFamilyName: family) {
                    print(" - \(name)")
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
