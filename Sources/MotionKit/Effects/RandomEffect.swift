//
//  File.swift
//  
//
//  Created by Yoel Lev on 3/28/22.
//

import SwiftUI

struct RandomAnimationModifier: ViewModifier {
    @Binding var animate: Bool

    func body(content: Content) -> some View {
        switch Int.random(in: 0...3) {
        case 0:
            content
                .bounceEffect(animate ? 1 : 0)
                .animation(.bounce, value: animate)
        case 1:
            content
                .rollEffect($animate)
        case 2:
            content
                .rotateEffect($animate)
        case 3:
            content
                .flipEffect($animate)
        default:
            content
                .bounceEffect(animate ? 1 : 0)
                .animation(.bounce, value: animate)
       }
    }
}

// MARK: - View Extension
extension View {
    public func randomAnimation(value: Binding<Bool>) -> some View {
        self.modifier(RandomAnimationModifier(animate: value))
    }
}
