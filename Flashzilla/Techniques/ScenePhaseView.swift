//
//  ScenePhaseView.swift
//  Flashzilla
//
//  Created by Rob Ranf on 1/2/25.
//

import SwiftUI

struct ScenePhaseView: View {
    @Environment(\.scenePhase) var scenePhase
    @Environment(\.accessibilityDifferentiateWithoutColor) var differentiateWithoutColor

    var body: some View {
        Text("Hello, Madison, this is scene phase")
            .onChange(of: scenePhase) { _, newPhase in
                if newPhase == .active {
                    print("Active")
                } else if newPhase == .inactive {
                    print("Inactive")
                } else if newPhase == .background {
                    print("Background")
                }

            }

        HStack {
            if differentiateWithoutColor {
                Image(systemName: "checkmark.circle")
            }

            Text("Success")
        }
        .padding()
        .background(differentiateWithoutColor ? .black : .green)
        .foregroundStyle(.white)
        .clipShape(.capsule)
    }
}

#Preview {
    ScenePhaseView()
}
