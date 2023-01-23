//
//  InfBg.swift
//  pracGame
//
//  Created by Mac on 22.01.2023.
//  Copyright © 2023 Savelii Novikov. All rights reserved.
//

import SpriteKit

class InfBg: SKNode {
    override init() {
        super.init()
        
        zPosition = -100
        
        for i in -3...3 {
            let bg = SKSpriteNode(imageNamed: "bg")
            self.addChild(bg)
            bg.position.y -= bg.frame.height * CGFloat(i)
        }
        
        let bg = SKSpriteNode(imageNamed: "bg")
        let sqn = SKAction.sequence([
            .moveBy(x: 0, y: bg.frame.height, duration: 1),
            .moveBy(x: 0, y: -bg.frame.height, duration: 0),
            ])
        
        self.run(.repeatForever(sqn))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
