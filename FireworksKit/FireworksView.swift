//
//  FireworksView.swift
//  FireworksKit
//
//  Created by Luca Angeletti on 28/07/2017.
//  Copyright © 2017 Luca Angeletti. All rights reserved.
//

import SpriteKit

public class FireworksView: SKView {

    private let effectScene: Scene

    public override init(frame: CGRect) {
        effectScene = Scene(size: frame.size)
        effectScene.backgroundColor = .clear
        super.init(frame: frame)
        presentScene(effectScene)
        allowsTransparency = true
        
        isUserInteractionEnabled = false
        
        effectScene.scaleMode = .aspectFill
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public var particleEffect: ParticleEffect? {
        didSet {
            guard let particleEffect = particleEffect else {
                effectScene.removeParticleEffect()
                return
            }
            effectScene.add(emitterNode: particleEffect.emitter, ofType: particleEffect.type)
        }
    }

}
