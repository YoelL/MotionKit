//
//  Animations.swift
//  
//
//  Created by Yoel Lev on 2/14/22.
//

import SwiftUI

public var debugAnimations = false
public extension Animation {
    public static var shake: Animation {
        if debugAnimations {
            return Animation.easeInOut(duration: 3.0)
        } else {
            return Animation.linear(duration: 0.27)
        }
    }

    public static var fly: Animation {
        if debugAnimations {
            return Animation.easeInOut(duration: 3.0)
        } else {
            return Animation.interactiveSpring(response: 0.6, dampingFraction: 0.6, blendDuration: 0.25)
        }
    }

    public static var basic: Animation {
        if debugAnimations {
            return Animation.spring(response: 5.0, dampingFraction: 0.7, blendDuration: 1.0)
        } else {
            return Animation.spring(response: 0.4, dampingFraction: 0.8, blendDuration: 1.0)
        }
    }
    
    public static var bounce: Animation {
        if debugAnimations {
            return Animation.spring(response: 5, dampingFraction: 0.5)
        } else {
            return Animation.spring(response: 1, dampingFraction: 0.5)
        }
    }
    
}
