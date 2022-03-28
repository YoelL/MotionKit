//
//  File.swift
//  
//
//  Created by Yoel Lev on 3/28/22.
//

import SwiftUI

struct FlipEffectModifier: ViewModifier {
    @Binding var animate: Bool

    func body(content: Content) -> some View {
          content
            .rotation3DEffect(.degrees( animate ? 180 : 0), axis: (x: 0, y: 180, z: 0.6))
            .animation(.fly ,value: animate)
      }
}

extension View {
    /// Flip effect animation
    /// - Parameter state 
    public func flipEffect(_ state: Binding<Bool>) -> some View {
        modifier(FlipEffectModifier(animate: state))
    }
}
