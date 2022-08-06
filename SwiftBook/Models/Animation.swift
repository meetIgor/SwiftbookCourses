//
//  Animation.swift
//  SwiftBook
//
//  Created by igor s on 05.08.2022.
//

import Foundation
import SpringAnimation

struct Animation {
    let title: String
    let force: Double
    let curve: String
    let duration: Double
    let delay: Double
    
    static func getDefault() -> Animation {
        Animation(
            title: "pop",
            force: 1,
            curve: "easeIn",
            duration: 1.8,
            delay: 0.4
        )
    }
    
    static func getRandomAnimation() -> Animation {
        
        let title = AnimationPreset.allCases.randomElement()?.rawValue ?? "pop"
        let curve = AnimationCurve.allCases.randomElement()?.rawValue ?? "easeIn"
        
        let animation = Animation(
            title: title,
            force: Double.random(in: 1.0...5.0),
            curve: curve,
            duration: Double.random(in: 0.5...5.0),
            delay: Double.random(in: 0.0...3.0)
        )
        return animation
    }
}
