//
//  GameScene.swift
//  pracGame
//
//  Created by Mac on 17.01.2023.
//  Copyright © 2023 Savelii Novikov. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var isPlaying = true
    
    var restartCallBack: (() -> ())?
    
    var knight = Knight()
    
    let cam = SKCameraNode()
    
//    let bgContainer = SKNode()
//    let bgSize = SKSpriteNode(imageNamed: "bg").frame.size
    
    override func didMove(to view: SKView) {
        
        self.anchorPoint = .init(x: 0.5, y: 0.5)
        let bg = SKSpriteNode(imageNamed: "bg")
        bg.zPosition = -100
        self.addChild(bg)
        self.camera = cam
        self.addChild(cam)
        cam.setScale(3.5)
        
        
        self.addChild(knight)
        
        knight.physicsBody?.allowsRotation = false
        
        let gestureRight = UISwipeGestureRecognizer(target: self, action:#selector (swiped(_:)))
        gestureRight.direction = .right
        view.addGestureRecognizer(gestureRight)
        
        let gestureUp = UISwipeGestureRecognizer(target: self, action:#selector (swiped(_:)))
        gestureUp.direction = .up
        view.addGestureRecognizer(gestureUp)
        
        let gestureLeft = UISwipeGestureRecognizer(target: self, action:#selector (swiped(_:)))
        gestureLeft.direction = .left
        view.addGestureRecognizer(gestureLeft)
        
        let floor = SKShapeNode(rectOf: .init(width: 750, height: 64), cornerRadius: 8)
        floor.fillColor = .clear
        floor.position = position
        floor.physicsBody = .init(rectangleOf: floor.frame.size)
        floor.physicsBody?.isDynamic = false
        
        let setter = FloorSetter(floor: floor, verticalSpacin: 100, startPosition: knight.position.applying(.init(translationX: 0, y: -100)))
        
        let floors = setter.setFloors(onNode: self, count: 4)
        
        var actions = floors.map { SKAction.move(to: $0.position, duration: 0.5) }
        actions.append(.move(to: knight.position, duration: 1))
        actions.append(.run {
            self.isPlaying = true
            })
        cam.run(.sequence(actions))
        
//        func setBg() {
//
//            for i in -2...2 {
//                let bg = SKSpriteNode(imageNamed: "bg")
//                bgContainer.addChild(bg)
//                bg.zPosition = -100
//                bg.position.y -= bg.frame.height * CGFloat(i)
//            }
//        }
//        self.addChild(bgContainer)

    }
    
    @objc func swiped(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case .left:
            knight.moveLeft()
        case .right:
            knight.moveRight()
        case .up:
            knight.jump()
        default:
            knight.stay()
        }
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        
        guard isPlaying else { return }
        
        cam.run(.move(to: knight.position, duration: 0.5))
        
        if knight.position.y < -500 {
            isPlaying = false
            showGameOver()
        }
    }
    
    func showGameOver() {
        let LoseGame = OverNode(size: self.frame.size) {
            self.restartCallBack?()
        }
        LoseGame.name = "over"
        cam.addChild(LoseGame)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        knight.position = touches.first!.location(in: self)
    }
    
}

