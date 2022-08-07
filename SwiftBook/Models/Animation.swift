//
//  Animation.swift
//  SwiftBook
//
//  Created by igor s on 05.08.2022.
//

import Foundation

struct Animation {
    let title: String
    let force: Double
    let curve: String
    let duration: Double
    let delay: Double
    
    static func getRandomAnimation() -> Animation {
        
        let title = DataStore.shared.animations.randomElement() ?? "pop"
        let curve = DataStore.shared.curves.randomElement() ?? "easeIn"
        
        let animation = Animation(
            title: title,
            force: Double.random(in: 1.0...3.0),
            curve: curve,
            duration: Double.random(in: 0.5...2.5),
            delay: Double.random(in: 0.0...2.0)
        )
        return animation
    }
    
    func description() -> String {
        let animationInfo =
        """
        preset:   \(title)
        curve:    \(curve)
        force:    \(String(format: "%.1f", force))
        duration: \(String(format: "%.1f", duration))
        delay:    \(String(format: "%.1f", delay))
        """
        return animationInfo
    }
}
