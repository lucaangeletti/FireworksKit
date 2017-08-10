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

    @IBInspectable var particleName: String?
    @IBInspectable var particleColor: UIColor?

    public override func awakeFromNib() {
        super.awakeFromNib()

        if let particleEffectName = particleName {
            guard let particleEffectType = ParticleEffectType(rawValue: particleEffectName) else {
                print("Invalid effect name: \(particleEffectName)")
                return
            }
            self.particleEffect = ParticleEffect(type: particleEffectType)
        }
        if let particleColor = particleColor {
            particleEffect?.particleColor = particleColor
        }
    }

    public override init(frame: CGRect) {
        effectScene = Scene(size: frame.size)
        super.init(frame: frame)
        prepare()
    }

    required public init?(coder aDecoder: NSCoder) {
        self.effectScene = Scene(size: .zero)
        super.init(coder: aDecoder)
        self.effectScene.size = frame.size
        prepare()
    }

    private func prepare() {
        presentScene(effectScene)
        allowsTransparency = true
        isUserInteractionEnabled = false
    }

    public var particleEffect: ParticleEffect? {
        didSet {
            guard let particleEffect = particleEffect else {
                effectScene.removeEmitterNodes()
                return
            }
            effectScene.add(emitterNode: particleEffect.emitter, ofType: particleEffect.type)
        }
    }
}
