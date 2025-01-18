//
//  Extension-ViewShape.swift
//  Flashzilla
//
//  Created by Rob Ranf on 1/17/25.
//

import Foundation
import SwiftUI

extension Shape {
    func fill(using offset: CGSize) -> some View {
        if offset.width == 0 {
            self.fill(.white)
        } else if offset.width < 0 {
            self.fill(.red)
        } else {
            self.fill(.green)
        }
    }
}
