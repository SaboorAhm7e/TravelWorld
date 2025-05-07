//
//  TravelWorldApp.swift
//  TravelWorld
//
//  Created by saboor on 07/05/2025.
//

import SwiftUI

@main
struct TravelWorldApp: App {
    @AppStorage("isSplahPresent") var isSplahPresent : Bool = false
    var body: some Scene {
        WindowGroup {
            if isSplahPresent {
                HomeView()
            } else {
                SplashView()
            }
            
        }
    }
}
