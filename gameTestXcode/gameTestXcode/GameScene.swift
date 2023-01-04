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
    
    let player = SKSpriteNode (imageNamed: "player")
    
    override func didMove(to view: SKView) {
        
        backgroundColor = SKColor .white
        player.position = CGPoint (x: size.width * 0.1, y: size.height * 0.5)
        addChild(player)
       
    }
}
