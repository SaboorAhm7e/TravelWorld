//
//  ContentView.swift
//  TravelWorld
//
//  Created by saboor on 07/05/2025.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Explore")
                }
            Text("Favorite")
                .tabItem {
                    Image(systemName: "house")
                    Text("Explore")
                }
                
            Text("Discover")
                .tabItem {
                    Image(systemName: "house")
                    Text("Explore")
                }
            Text("Profile")
                .tabItem {
                    Image(systemName: "house")
                    Text("Explore")
                }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
