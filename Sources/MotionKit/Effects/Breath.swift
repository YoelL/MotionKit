//
//  Breath.swift
//  
//
//  Created by Yoel Lev on 3/15/22.
//

import SwiftUI

struct BreathGeometryEffect: ViewModifier {
    @Binding var breathAnimation: Bool

    func body(content: Content) -> some View {
          content
            .scaleEffect(breathAnimation ? .init(1.05) : .init(1.0))
            .animation(.breath ,value: breathAnimation)
      }
}

extension View {
    /// Bounce effect animation
    /// - Parameter n: The amount of bounces the view will bounce.
    public func breathEffect(_ state: Binding<Bool>) -> some View {
        modifier(BreathGeometryEffect(breathAnimation: state))
    }
}
