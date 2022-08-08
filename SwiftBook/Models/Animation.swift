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
    
    var description: String {
            """
            preset:   \(title)
            curve:   \(curve)
            force:   \(String(format: "%.1f", force))
            duration:   \(String(format: "%.1f", duration))
            delay:   \(String(format: "%.1f", delay))
            """
    }
    
    static func getRandomAnimation() -> Animation {
        
        let title = DataStore.shared.animations.randomElement()?.rawValue ?? "pop"
        let curve = DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn"
        
        let animation = Animation(
            title: title,
            force: Double.random(in: 1.0...2.0),
            curve: curve,
            duration: Double.random(in: 0.8...2.0),
            delay: Double.random(in: 0.0...0.7)
        )
        return animation
    }
}
