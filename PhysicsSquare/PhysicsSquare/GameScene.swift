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
        cam.setScale(1.5)
        
        let platform = SKShapeNode(rectOf: .init(width: 500, height: 20),
                                   cornerRadius: 0)
        platform.position.y = -frame.height / 4
        platform.fillColor = .white
        platform.physicsBody = .init(rectangleOf: platform.frame.size)
        platform.physicsBody?.isDynamic = false
        addChild(platform)
        
        
        let matrixWidth = 7 
        let matrixHeight = matrixWidth / 2
        let matrixMargin: CGFloat = 32
        let containerWidth = (self.size.width - matrixMargin * 2)
        let width: CGFloat = containerWidth / CGFloat(matrixWidth)
        let square = SKShapeNode.init(rectOf: CGSize(width: width, height: width),
                                      cornerRadius: 0)
        square.fillColor = .red
        square.physicsBody = .init(rectangleOf: square.frame.size)
        square.physicsBody?.isDynamic = true
        
        
        let xOffset: CGFloat = -frame.width / 2 + matrixMargin + 0.5 * width
        let yOffset: CGFloat = platform.frame.maxY + square.frame.size.height / 2
        for i in 0..<matrixWidth {
            for j in 0..<matrixWidth + matrixHeight {
                let copy = square.copy() as! SKShapeNode
                copy.position = .init(
                    x: xOffset + CGFloat(i) * width,
                    y: CGFloat(j) * width + yOffset)
                addChild(copy)
            }
        }
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let loc = touches.first?.location(in: self)
        let node = atPoint(loc!)
        node.removeFromParent()
    }
}
