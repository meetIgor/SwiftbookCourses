//
//  DataStore.swift
//  SwiftBook
//
//  Created by igor s on 07.08.2022.
//

import Foundation
import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
