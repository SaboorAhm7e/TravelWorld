//
//  ContentView.swift
//  TravelWorld
//
//  Created by saboor on 07/05/2025.
//

import SwiftUI

struct ContentView: View {
    @Namespace private var animationNamespace
    @State private var isExpanded = false

    var body: some View {
        VStack {
            if isExpanded {
                expandedView
            } else {
                collapsedView
            }
        }
        .onTapGesture {
            withAnimation {
                isExpanded.toggle()
            }
        }
    }

    @ViewBuilder
    private var collapsedView: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.blue)
            .frame(width: 100, height: 100)
            .matchedGeometryEffect(id: "expandingView", in: animationNamespace)
    }

    @ViewBuilder
    private var expandedView: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.blue)
            .frame(width: 300, height: 300)
            .matchedGeometryEffect(id: "expandingView", in: animationNamespace)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
