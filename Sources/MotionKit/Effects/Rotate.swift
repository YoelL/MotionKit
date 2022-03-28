//
//  File.swift
//  
//
//  Created by Yoel Lev on 3/28/22.
//

import SwiftUI

struct RotateEffectModifier: ViewModifier {
    @Binding var animate: Bool

    func body(content: Content) -> some View {
          content
            .rotation3DEffect(.degrees( animate ? 45 : 0), axis: (x: 0, y: 0, z: 0.6))
            .animation(.fly ,value: animate)
      }
}

extension View {
    public func rotateEffect(_ state: Binding<Bool>) -> some View {
        modifier(RotateEffectModifier(animate: state))
    }
}
