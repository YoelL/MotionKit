//
//  Shake.swift
//  
//
//  Created by Yoel Lev on 2/14/22.
//

import SwiftUI

struct Shake: GeometryEffect {
    var amount: CGFloat = 10
    var shakesPerUnit = 3
    var animatableData: CGFloat

    func effectValue(size: CGSize) -> ProjectionTransform {
        let translationX = amount * sin(animatableData * .pi * CGFloat(shakesPerUnit))
        return ProjectionTransform(CGAffineTransform(translationX: translationX, y: 0))
    }
}

extension View {
    public func shakeEffect(_ n: Int) -> some View {
        modifier(Shake(animatableData: CGFloat(n)))
    }
}
