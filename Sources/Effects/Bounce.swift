//
//  BounceEffect.swift
//  
//
//  Created by Yoel Lev on 2/14/22.
//

import SwiftUI

struct BounceEffect: GeometryEffect {
    var height: CGFloat
    var times: CGFloat

    init(height: CGFloat = 50, times: Int) {
        self.times = CGFloat(times)
        self.height = height
    }
    
    var animatableData: CGFloat {
        get { times }
        set { times = newValue }
    }
    
    private func bounceY(_ x: CGFloat) -> CGFloat {
        abs(sin(x * .pi))
    }
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        ProjectionTransform(.init(translationX: 0, y: -height * bounceY(times)))
    }
}

extension View {
    public func bounceEffect(_ n: Int) -> some View {
        modifier(BounceEffect(times: n))
    }
}


