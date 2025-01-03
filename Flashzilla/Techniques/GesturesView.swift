//
//  GesturesView.swift
//  Flashzilla
//
//  Created by Rob Ranf on 10/1/24.
//

import SwiftUI

struct GesturesView: View {
//    @State private var currentAmount = 0.0
//    @State private var finalAmount = 1.0
    @State private var currentAmount = Angle.zero
    @State private var finalAmount = Angle.zero

    var body: some View {
        Text("Hello, Madison - This is rotate gesture")
            .rotationEffect(currentAmount + finalAmount)
            .gesture(
                RotateGesture()
                    .onChanged { value in
                        currentAmount =  value.rotation
                    }
                    .onEnded { value in
                        finalAmount += currentAmount
                        currentAmount = .zero
                    }
            )
//        Text("Hello, Madison - This is magnify")
//            .scaleEffect(finalAmount + currentAmount)
//            .gesture(
//                MagnifyGesture()
//                    .onChanged { value in
//                        currentAmount = value.magnification - 1
//                    }
//                    .onEnded { value in
//                        finalAmount += currentAmount
//                        currentAmount = 0
//                    }
//            )
//            .padding(.vertical)

//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .onTapGesture(count: 2) {
//                print("Double tapped")
//            }

//        Text("Hello, Madison")
//            .onLongPressGesture(minimumDuration: 2) {
//                print("Long pressed")
//            } onPressingChanged: { inProgress in
//                print("In progress: \(inProgress)")
//            }

//        VStack {
//            Text("Hello, Madison V Stack")
//                .onTapGesture {
//                    print("Text Tapped")
//                }
//        }
//        .simultaneousGesture(
//            TapGesture()
//                .onEnded() {
//                    print("VStack tapped")
//            }
//        )
    }
}

#Preview {
    GesturesView()
}
