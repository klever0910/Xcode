//
//  GameScene.swift
//  PhysicsSquare
//
//  Created by Mac on 23.01.2023.
//  Copyright © 2023 Savelii Novikov. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var Square = SKNode()
    
    let cam = SKCameraNode()
    
    override func didMove(to view: SKView) {
        
        self.anchorPoint = .init(x: 0.5, y: 0.5)
        self.camera = cam
        self.addChild(cam)
        cam.setScale(2)
        
        let truePos = -frame.width / 1.2
        
        let matrixCount = 6
        let matrixMargin: CGFloat = 32
        let containerWidth = (self.size.width - matrixMargin * 2)
        let width = containerWidth / CGFloat(matrixCount)
        let square = SKShapeNode.init(rectOf: CGSize(width: width, height: width),
                                      cornerRadius: 0)
        square.fillColor = .red
        square.physicsBody = .init(rectangleOf: square.frame.size)
        square.physicsBody?.isDynamic = true
        
        let spasing: CGFloat = -frame.width / 16
        let xOffset = -frame.width / 2 + matrixMargin + 0.5 * width
        for i in 0..<matrixCount {
            for j in 0..<matrixCount + matrixCount / 2{
                let copy = square.copy() as! SKShapeNode
                copy.position = .init(x: xOffset + CGFloat(i) * width + spasing, y: CGFloat(j) * width + spasing)
                copy.position.y = truePos + frame.width / 2
                addChild(copy)
            }
        }
        
        let platform = SKShapeNode(rectOf: .init(width: 500, height: 20),
                                   cornerRadius: 0)
        platform.position.y = truePos
        platform.fillColor = .white
        platform.physicsBody = .init(rectangleOf: platform.frame.size)
        platform.physicsBody?.isDynamic = false
        addChild(platform)
    }
}

