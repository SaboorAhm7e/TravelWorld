//
//  HomeView.swift
//  TravelWorld
//
//  Created by saboor on 07/05/2025.
//

import SwiftUI

struct TerritoryModel: Hashable  {
    let name : String
    let icon : String
}

struct HomeView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var territoryType : [TerritoryModel] = [
        .init(name: "All", icon: "map"),
        .init(name: "Hiking", icon: "location.circle"),
        .init(name: "Forest", icon: "leaf"),
        .init(name: "Camp", icon: "flame")
    ]
    var categories : [String] = [
    "Popular",
    "Adventure",
    "Luxury",
    "Couple",
    "Family",
    "Food",
    "Friendly"
    ]
    @State var selectedTerretoryType : TerritoryModel
    @State var selectedCategory : String
    init() {
        _selectedTerretoryType = State(initialValue: territoryType[0])
        _selectedCategory = State(initialValue: categories[0])
    }
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    ForEach(territoryType,id:\.self) { item in
                        TerritoryCapsule(item: item, selectedTerretoryType: $selectedTerretoryType)
                        .onTapGesture {
                            selectedTerretoryType = item
                        }
                    }
                }
                .frame(height:140)
                .padding(.horizontal,16)
                
                Spacer()
                    .frame(height:30)
                
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(spacing:15) {
                        ForEach(categories,id: \.self) { item in
                            Text(item)
                                .font(.title3)
                                .foregroundColor(selectedCategory == item ? (colorScheme == .dark ? Color.white : Color.black) : Color.secondary)
                                .onTapGesture {
                                    selectedCategory = item
                                }
                        }
                    }
                }
                .padding(.horizontal,16)
                
                
               Spacer()
            }
            .navigationTitle("Places")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("hello")
                    } label: {
                        Image(systemName: "gear")
                            .foregroundColor(Color.btnClr)
                    }

                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
                .preferredColorScheme(.light)
            HomeView()
                .preferredColorScheme(.dark)
        }
    }
}
