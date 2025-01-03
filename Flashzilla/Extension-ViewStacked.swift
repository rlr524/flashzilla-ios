//
//  Extension-ViewStacked.swift
//  Flashzilla
//
//  Created by Rob Ranf on 1/3/25.
//

import Foundation
import SwiftUI

extension View {
    func stacked(at position: Int, in total: Int) -> some View {
        let offset = Double(total - position)
        return self.offset(y: offset * 10)
    }
}
