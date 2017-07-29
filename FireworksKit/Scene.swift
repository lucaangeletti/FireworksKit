//
//  Scene.swift
//  FireworksKit
//
//  Created by Luca Angeletti on 28/07/2017.
//  Copyright © 2017 Luca Angeletti. All rights reserved.
//

import SpriteKit

class Scene: SKScene {

    override func didMove(to view: SKView) {
        super.didMove(to: view)
        self.anchorPoint.x = 0.5
        self.anchorPoint.y = 0.5
    }

    private var emitterNode: SKEmitterNode?

    var particleEffect:ParticleEffect? {
        didSet {
            removeAllChildren()
            emitterNode = nil
            guard let particleEffect = particleEffect else { return }
            let bundle = Bundle(for: Scene.self as AnyClass)

            guard let path = bundle.path(forResource: particleEffect.rawValue, ofType: "sks") else {
                print("Missing file: \(particleEffect.rawValue).sks")
                return
            }

            guard let emitterNode = NSKeyedUnarchiver.unarchiveObject(withFile: path) as? SKEmitterNode else {
                print("Invalid SKEmitterNode: \(particleEffect.rawValue).sks")
                return
            }

            guard let image = UIImage(named: particleEffect.textureName, in: bundle, compatibleWith: nil) else {
                print("Invalid textureName: \(particleEffect.textureName)")
                return
            }

            emitterNode.particleTexture = SKTexture(image: image)

            emitterNode.position.y = {
                switch particleEffect.verticalPosition {
                case .top: return frame.maxY
                case .middle: return frame.midY
                case .bottom: return frame.minY
                }
            }()

            emitterNode.position.x = 0

            if particleEffect.shouldResize {
                emitterNode.particlePositionRange.dx = frame.width / 2
                emitterNode.particlePositionRange.dx = frame.height / 2
            }

            addChild(emitterNode)
            self.emitterNode = emitterNode
        }
    }

    var particleColor: UIColor? {
        didSet {
            guard let particleColor = particleColor, let emitterNode = emitterNode else { return }
            emitterNode.particleColor = particleColor
            emitterNode.particleColorBlendFactor = 1
            emitterNode.particleColorSequence = nil
        }
    }
}

