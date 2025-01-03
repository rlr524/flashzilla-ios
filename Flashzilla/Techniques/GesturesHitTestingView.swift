//
//  GesturesHitTestingView.swift
//  Flashzilla
//
//  Created by Rob Ranf on 12/31/24.
//

import SwiftUI

struct GesturesHitTestingView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 300, height: 300)
                .onTapGesture {
                    print("Rectangle tapped")
                }

            Circle()
                .fill(.red)
                .frame(width: 300, height: 300)
                .onTapGesture {
                    print("Circle tapped")
                }
                .allowsHitTesting(false)
        }
    }
}

#Preview {
    GesturesHitTestingView()
}
