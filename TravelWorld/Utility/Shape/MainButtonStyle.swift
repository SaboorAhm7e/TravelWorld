//
//  MainButtonStyle.swift
//  TravelWorld
//
//  Created by saboor on 07/05/2025.
//

import SwiftUI


struct MainButtonStyle : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 22, weight: .semibold, design: .rounded))
            .foregroundColor(Color.white)
            .padding()
            .background(Color.btnClr)
            .cornerRadius(12)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
    
    
}
