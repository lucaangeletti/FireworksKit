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

    public init(frame: CGRect, particleEffect: ParticleEffect? = nil) {
        effectScene = Scene(size: frame.size)
        effectScene.backgroundColor = .clear
        super.init(frame: frame)
        presentScene(effectScene)
        allowsTransparency = true
        self.particleEffect = particleEffect
        
        isUserInteractionEnabled = false
        
        effectScene.scaleMode = .aspectFill
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public var particleEffect: ParticleEffect? {
        set {
            return effectScene.particleEffect = newValue
        }
        get {
            return effectScene.particleEffect
        }
    }

    public var particleColor: UIColor? {
        get {
            return effectScene.particleColor
        }
        set {
            effectScene.particleColor = newValue
        }
    }
}
