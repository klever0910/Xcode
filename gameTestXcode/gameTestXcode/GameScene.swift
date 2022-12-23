//
//  GameScene.swift
//  gameTestXcode
//
//  Created by Mac on 22.12.2022.
//  Copyright © 2022 Savelii Novikov. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let fireParticles = SKEmitterNode(fileNamed: "superFire")!
    
    override func didMove(to view: SKView) {
       
        addChild(fireParticles)
        fireParticles.targetNode = self
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        fireParticles.position = touches.first?.location(in: self) ?? .init()
    }
}
