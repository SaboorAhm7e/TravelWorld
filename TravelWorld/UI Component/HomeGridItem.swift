//
//  HomeGridItem.swift
//  TravelWorld
//
//  Created by saboor on 24/05/2025.
//

import SwiftUI

struct HomeGridItem: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack {
            Image("bali")
                .resizable()
                .frame(width: 250, height: 250)
                .cornerRadius(32)
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 20)
            VStack(alignment:.leading,spacing: 5) {
                Text("Indonesia Bali")
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                Text("More than 42 places")
                HStack {
                    Text("$850")
                    Spacer()
                    Button {
                        print("saved")
                    } label: {
                        Image(systemName: "bookmark")
                    }
                    

                }
                .font(.system(size: 32, weight: .bold, design: .rounded))
                .padding(.bottom,10)
            }
            .padding(.horizontal,16)
            
        }
        .background(
        RoundedRectangle(cornerRadius: 32)
            .fill(colorScheme == .dark ? Color.secondary.opacity(0.5) : Color.white)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 0)
        )
        .frame(width: 250, height: 330)
    }
}

struct HomeGridItem_Previews: PreviewProvider {
    static var previews: some View {
        HomeGridItem()
    }
}
