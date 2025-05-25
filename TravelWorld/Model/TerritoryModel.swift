//
//  TerritoryModel.swift
//  TravelWorld
//
//  Created by saboor on 11/05/2025.
//

import SwiftUI

struct TerritoryModel: Hashable  {
    let name : String
    let icon : String
}

extension TerritoryModel {
    static let data : [TerritoryModel] = [
        .init(name: "All", icon: "map"),
        .init(name: "Hiking", icon: "location.circle"),
        .init(name: "Forest", icon: "leaf"),
        .init(name: "Camp", icon: "flame")
    ]
}
