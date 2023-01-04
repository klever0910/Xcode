//
//  GameScene.swift
//  jetpackUA
//
//  Created by Mac on 28.12.2022.
//  Copyright © 2022 Savelii Novikov. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var background = SKSpriteNode(imageNamed: "bgImage")
    
    override func didMove(to view: SKView) {
        background.position = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        addChild(background)
    } 
}
