//
//  File.swift
//  
//
//  Created by Yoel Lev on 4/27/22.
//

import SwiftUI

struct RollEffectModifier: ViewModifier {
    @Binding var animate: Bool

    func body(content: Content) -> some View {
          content
            .rotationEffect(animate ? .init(degrees: 360 * 4) : .zero)
            .animation(.fly ,value: animate)
      }
}

extension View {
    /// Roll effect animation
    /// - Parameter n: The amount of bounces the view will bounce.
    public func rollEffect(_ state: Binding<Bool>) -> some View {
        modifier(RollEffectModifier(animate: state))
    }
}
