//
//  ContentView.swift
//  Flashzilla
//
//  Created by Rob Ranf on 10/1/24.
//

import SwiftUI

struct ContentView: View {
    @State private var cards = Array<Card>(repeating: .exampleOne, count: 10)

    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack {
                ZStack {
                    ForEach(0..<cards.count, id: \.self) { index in
                        CardView(card: cards[index])
                            .stacked(at: index, in: cards.count)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
