//
//  BounceEffect.swift
//  
//
//  Created by Yoel Lev on 2/14/22.
//

import SwiftUI

struct BounceGeometryEffect: GeometryEffect {
    var height: CGFloat
    var times: CGFloat

    public init(height: CGFloat = 50, times: Int) {
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

    /// Bounce effect animation
    /// - Parameter n: The amount of bounces the view will bounce.
    public func bounceEffect(_ n: Int) -> some View {
        modifier(BounceGeometryEffect(times: n))
    }
}


