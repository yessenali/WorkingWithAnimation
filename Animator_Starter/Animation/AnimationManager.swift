//
//  AnimationManager.swift
//  Animator_Starter
//
//  Created by Yessenali Zhanaidar on 26.02.2022.
//  Copyright © 2022 Paradigm Shift Development, LLC. All rights reserved.
//

import UIKit

class AnimationManager {
    
    // Calculate screen bounds
    class var screenBounds: CGRect {
        return UIScreen.main.bounds
    }
    
    // Screen Positions
    
    class var screenRight: CGPoint {
        return CGPoint(x: screenBounds.maxX, y: screenBounds.midY)
    }
    
    class var screenTop: CGPoint {
        return CGPoint(x: screenBounds.midX, y: screenBounds.minY)
    }
    
    class var screenLeft: CGPoint {
        return CGPoint(x: screenBounds.minX, y: screenBounds.midY)
    }
    
    class var screenBottom: CGPoint {
        return CGPoint(x: screenBounds.midX, y: screenBounds.maxY)
    }
    
    
    // Tracking variables
    var constraintOrigins = [CGFloat]()
    var currentConstraints: [NSLayoutConstraint]!
    
    init(activeConstraints: [NSLayoutConstraint]) {
        for constraint in activeConstraints {
            constraintOrigins.append(constraint.constant)
            constraint.constant -= AnimationManager.screenBounds.width
        }
        
        currentConstraints = activeConstraints
    }
    
}
