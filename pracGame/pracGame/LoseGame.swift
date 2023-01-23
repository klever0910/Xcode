//
//  LoseGame.swift
//  pracGame
//
//  Created by Mac on 19.01.2023.
//  Copyright © 2023 Savelii Novikov. All rights reserved.
//
import SpriteKit

class OverNode: SKNode {
    
    let tappedCallBack: () -> ()
    
    init(size: CGSize, tappedCallBack: @escaping () -> ()) {
        self.tappedCallBack = tappedCallBack
        
        super.init()
        
        self.zPosition = 100
        self.isUserInteractionEnabled = true
        
//        print(self.frame.size)
        let overLayer = SKShapeNode(rectOf: size)
        overLayer.fillColor = .black
        overLayer.lineWidth = 0
        
        let gameOverLabel = SKLabelNode(text: "You lose :(")
        
        let tapLabel = SKLabelNode(text: "TAP ANYWHERE TO RESTART")
        tapLabel.fontSize = 12
        tapLabel.position.y -= size.height / 2 - 64 - tapLabel.frame.height
        let action = SKAction.sequence([
            .scale(to: 1.2, duration: 1),
            .scale(to: 1.0, duration: 1),
            ])
        tapLabel.run(.repeatForever(action))
        
        [overLayer, gameOverLabel, tapLabel].forEach {
            self.addChild($0)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.tappedCallBack()
    }
}
