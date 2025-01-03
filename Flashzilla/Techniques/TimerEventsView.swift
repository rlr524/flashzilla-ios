//
//  TimerEventsView.swift
//  Flashzilla
//
//  Created by Rob Ranf on 1/2/25.
//

import SwiftUI

struct TimerEventsView: View {
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    // Can also add some tolerance
    let timerWithTolerance = Timer.publish(every: 1, tolerance: 0.5, on: .main, in: .common).autoconnect()
    @State private var counter = 0

    var body: some View {
        Text("Hello, Madison, this is the timer")
            .onReceive(timer) { time in
                if counter == 5 {
                    timer.upstream.connect().cancel()
                } else {
                    print("The time is now \(time)")
                }
                counter += 1
            }
    }
}

#Preview {
    TimerEventsView()
}
