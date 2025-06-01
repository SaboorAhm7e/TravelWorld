//
//  HomeView.swift
//  TravelWorld
//
//  Created by saboor on 07/05/2025.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: properties
    
    @Environment(\.colorScheme) var colorScheme
    @Namespace private var animationNamespace

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
        _selectedTerretoryType = State(initialValue: TerritoryModel.data[0])
        _selectedCategory = State(initialValue: categories[0])
    }
    
    // MARK: - body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false) {
            VStack(spacing:30) {
               
                territoryView
                
                categoryView
                
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(spacing:20) {
                        ForEach(0..<4,id: \.self) { item in
                            HomeGridItem()
                                .frame(width: 250, height: 330)
                        }
                    }
                    .padding(.vertical,25)
                    .padding(.horizontal,5)
                }
                
                Spacer()
            }
        }
            .padding(.horizontal,16)
            .navigationTitle("Places")
            .toolbar {
               homeToolbar()
            }
        }
    }
    
    // MARK: territories
    
    @ViewBuilder
    private var territoryView : some View {
        HStack {
            ForEach(TerritoryModel.data,id:\.self) { item in
                TerritoryCapsule(item: item, selectedTerretoryType: $selectedTerretoryType)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            selectedTerretoryType = item
                        }
                    }
            }
        }
        .frame(height:140)
    }
    
    // MARK: categories
    
    @ViewBuilder
    private var categoryView : some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(spacing:15) {
                ForEach(categories,id: \.self) { item in
                    VStack {
                        Text(item)
                            .font(.title3)
                            .foregroundColor(selectedCategory == item ? (colorScheme == .dark ? Color.white : Color.black) : Color.secondary)
                            .onTapGesture {
                                withAnimation(.easeInOut) {
                                    selectedCategory = item
                                }
                                
                            }
                        if selectedCategory == item {
                            Capsule()
                                .fill(Color.btnClr)
                                .frame(height: 2)
                                .matchedGeometryEffect(id: "categoryUnderline", in: animationNamespace)
                        }
                    }
                    
                }
            }
        }
    }
    // MARK: toolbar
    @ToolbarContentBuilder
    private func homeToolbar() -> some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            Button {
                print("Settings tapped")
            } label: {
                Image(systemName: "gear")
                    .foregroundColor(Color.btnClr)
            }
        }

        ToolbarItem(placement: .navigationBarLeading) {
            Button {
                print("Profile tapped")
            } label: {
                Image(systemName: "person")
                    .foregroundColor(Color.btnClr)
            }
        }
    }
   
}

// MARK: - Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
     //   Group {
            HomeView()
                .preferredColorScheme(.light)
//            HomeView()
//                .preferredColorScheme(.dark)
//        }
    }
}
