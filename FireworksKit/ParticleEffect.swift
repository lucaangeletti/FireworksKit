//
//  ParticleEffect.swift
//  FireworksKit
//
//  Created by Luca Angeletti on 29/07/2017.
//  Copyright © 2017 Luca Angeletti. All rights reserved.
//

import SpriteKit

public class ParticleEffect {
    
    let type: ParticleEffectType
    let emitter: SKEmitterNode
    
    public var particleColor: UIColor {
        didSet {
            emitter.particleColor = particleColor
        }
    }
    
    public var particleSpeed: CGFloat {
        didSet {
            emitter.particleSpeed = particleSpeed
        }
    }
    
    public init(type: ParticleEffectType) {
        let bundle = Bundle(for: Scene.self as AnyClass)
        let path = bundle.path(forResource: type.rawValue, ofType: "sks")!
        let emitterNode = NSKeyedUnarchiver.unarchiveObject(withFile: path) as! SKEmitterNode
        let image = UIImage(named: type.textureName, in: bundle, compatibleWith: nil)!
        emitterNode.particleTexture = SKTexture(image: image)
        self.emitter = emitterNode
        
        //TODO: this should now be exectued for snow
        emitter.particleColorBlendFactor = 1
        emitter.particleColorSequence = nil
        self.type = type
        
        self.particleColor = emitter.particleColor
        self.particleSpeed = emitter.particleSpeed
    }
}

