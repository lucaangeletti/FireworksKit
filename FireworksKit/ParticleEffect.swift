//
//  ParticleEffect.swift
//  FireworksKit
//
//  Created by Luca Angeletti on 29/07/2017.
//  Copyright © 2017 Luca Angeletti. All rights reserved.
//

import SpriteKit

public class ParticleEffect {
    
    public let type: ParticleEffectType

    let emitter: SKEmitterNode

    public var particleColor: UIColor {
        get {
            return emitter.particleColor
        }
        set {
            emitter.particleColor = newValue
            emitter.particleColorBlendFactor = 1
            emitter.particleColorSequence = nil
        }
    }

    public var particleSpeed: CGFloat {
        get {
            return emitter.particleSpeed
        }
        set {
            emitter.particleSpeed = newValue
        }
    }

    public init(type: ParticleEffectType) {
        let bundle = Bundle(for: Scene.self as AnyClass)
        let path = bundle.path(forResource: type.rawValue, ofType: "sks")!
        let emitterNode = NSKeyedUnarchiver.unarchiveObject(withFile: path) as! SKEmitterNode
        let image = UIImage(named: type.textureName, in: bundle, compatibleWith: nil)!
        emitterNode.particleTexture = SKTexture(image: image)
        self.emitter = emitterNode
        self.type = type
    }
}

