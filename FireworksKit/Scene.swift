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
        backgroundColor = .clear
        scaleMode = .resizeFill
    }

    func removeEmitterNodes() {
        children.filter { $0 is SKEmitterNode }.forEach { $0.removeFromParent() }
    }

    func add(emitterNode: SKEmitterNode, ofType type: ParticleEffectType) {
        removeEmitterNodes()

        emitterNode.position.y = {
            switch type.verticalPosition {
            case .top: return frame.maxY
            case .middle: return frame.midY
            case .bottom: return frame.minY
            }
        }()

        emitterNode.position.x = 0

        if type.shouldResize {
            emitterNode.particlePositionRange.dx = frame.width / 2
            emitterNode.particlePositionRange.dx = frame.height / 2
        }

        addChild(emitterNode)
    }
}

