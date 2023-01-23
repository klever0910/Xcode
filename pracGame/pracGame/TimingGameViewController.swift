//
//  Timming.swift
//  pracGame
//
//  Created by Mac on 19.01.2023.
//  Copyright © 2023 Savelii Novikov. All rights reserved.
//

import SpriteKit

class TimingGameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            
            let scene = TimingGameScene(size: .zero)
            scene.scaleMode = .resizeFill
            view.presentScene(scene)
            
            view.ignoresSiblingOrder = true
            view.showsPhysics = true
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
}

class TimingGameScene: SKScene {
    
    let node1 = SKShapeNode(circleOfRadius: 32)
    let node2 = SKShapeNode(circleOfRadius: 32)
    
    override func didMove(to view: SKView) {
        self.backgroundColor = .black
        
        node1.position.y = frame.maxY - 100
        node1.position.x = frame.maxX - 100
        node1.fillColor = .blue
        self.addChild(node1)
        
        node2.fillColor = .purple
        node2.position.y = frame.maxY - 100
        node2.position.x = frame.minX + 100
        self.addChild(node2)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let action = SKAction.moveBy(x: 0, y: -400, duration: 1)
        action.timingMode = .easeOut
        node1.run(action)
        
        //        SKActionTimingFunction
        
        action.timingMode = .easeIn
        //        action.speed = 2
        node2.run(action)
    }
}
