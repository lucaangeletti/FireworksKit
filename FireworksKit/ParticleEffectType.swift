//
//  Effect.swift
//  FireworksKit
//
//  Created by Luca Angeletti on 28/07/2017.
//  Copyright © 2017 Luca Angeletti. All rights reserved.
//

import SpriteKit

public enum ParticleEffectType: String {

    case
        snow = "Snow",
        rain = "Rain",
        smoke = "Smoke",
        fire = "Fire"

    var textureName: String {
        switch self {
        case .snow: return "spark"
        case .rain: return "spark"
        case .smoke: return "spark"
        case .fire: return "spark"
        }
    }

    var shouldResize: Bool {
        switch self {
        case .snow: return true
        case .rain: return true
        case .smoke: return true
        case .fire: return true
        }
    }

    var verticalPosition: VerticalPosition {
        switch self {
        case .snow: return .top
        case .rain: return .top
        case .smoke: return .bottom
        case .fire: return .bottom
        }
    }
    
    public static var all: [ParticleEffectType] {
        return [.snow, .rain, .smoke, .fire]
    }
    
//    func setup(emitterNode: SKEmitterNode) {
//        switch self {
//        case .snow: return "spark"
//        case .rain: return "spark"
//        case .smoke: return "spark"
//        case .fire: return "spark"
//        }
//    }
}

enum VerticalPosition {
    case top, middle, bottom
}
