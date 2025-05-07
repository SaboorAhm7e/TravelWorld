//
//  HomeView.swift
//  TravelWorld
//
//  Created by saboor on 07/05/2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Places")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("hello")
                    } label: {
                        Image(systemName: "gear")
                    }

                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
