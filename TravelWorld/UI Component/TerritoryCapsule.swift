//
//  TerritoryCapsule.swift
//  TravelWorld
//
//  Created by saboor on 10/05/2025.
//

import SwiftUI

struct TerritoryCapsule: View {
    // MARK: - Properties
    @Environment(\.colorScheme) var colorScheme
    var item : TerritoryModel
    @Binding var selectedTerretoryType : TerritoryModel
    
    // MARK: - Body
    var body: some View {
        ZStack(alignment:.center) {
            Capsule()
                .fill(item == selectedTerretoryType ? Color.btnClr : (colorScheme == .dark ? Color.secondary.opacity(0.5) : Color.white))
                .animation(.easeIn(duration:0.2),value: selectedTerretoryType)
                .shadow(color: Color.black.opacity(0.3), radius: 8, x: 0, y: 5)
            VStack {
                ZStack {
                    Circle()
                        .fill(item == selectedTerretoryType ? (colorScheme == .dark ? Color.secondary : Color.white) : Color.btnClr)
                        .frame(width:60,height: 60)
                    Image(systemName: "\(item.icon)")
                        .font(.title2)
                        .foregroundColor(item == selectedTerretoryType ? (colorScheme == .dark ? Color.white : Color.btnClr) : (colorScheme == .dark ? Color.black : Color.white))
                    
                }
                
                Text(item.name)
                    .foregroundColor(item == selectedTerretoryType ? Color.white : Color.black)
                Spacer()
            }
            .padding(.vertical,10)
        }
    }
}

