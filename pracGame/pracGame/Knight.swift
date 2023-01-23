//
//  Knight.swift
//  pracGame
//
//  Created by Mac on 19.01.2023.
//  Copyright © 2023 Savelii Novikov. All rights reserved.
//

import SpriteKit

class Knight: SKSpriteNode {
    
    
    enum State {
        case left, right, stay
        
        var texturesBaseName: String {
            switch self {
            case .left:
                return "left"
            case .right:
                return "right"
            case .stay:
                return "down"
            }
        }
        
        var textures: [SKTexture] {
            let name = self.texturesBaseName
            var arr = [SKTexture]()
            for i in 1...5 {
                let text = SKTexture(imageNamed: "\(name)\(i)")
                arr.append(text)
            }
            return arr
        }
    }
    
    private let movementKey = "movement"
    private let movementSpeed: CGFloat = 180
    
    init() {
        let texture = SKTexture(imageNamed: "down1")
        super.init(texture: texture, color: .clear, size: texture.size())
        
        self.physicsBody = .init(circleOfRadius: self.size.width / 3)
        self.physicsBody?.mass = 1
        
        self.stay()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func moveLeft() {
        self.animateTextures(forState: .left)
        
        self.removeAction(forKey: movementKey)
        self.run(.repeatForever(.moveBy(x: -movementSpeed, y: 0, duration: 1)), withKey: movementKey)
    }
    
    func moveRight() {
        self.animateTextures(forState: .right)
        
        self.removeAction(forKey: movementKey)
        self.run(.repeatForever(.moveBy(x: movementSpeed, y: 0, duration: 1)), withKey: movementKey)
    }
    
    func stay() {
        self.animateTextures(forState: .stay)
        
        self.removeAction(forKey: movementKey)
    }
    
    private func animateTextures(forState state: State) {
        let animateAction = SKAction.animate(
            with: state.textures,
            timePerFrame: 0.1,
            resize: true,
            restore: false)
        
        self.run(.repeatForever(animateAction))
    }
    
    func jump() {
        self.physicsBody?.applyImpulse(.init(dx: 0, dy: 1300))
    }
    
}

extension SKPhysicsContact {
    
    func getNode<T>() -> T? {
        if let component = self.bodyA.node as? T {
            return component
        }
        if let component = self.bodyB.node as? T  {
            return component
        }
        return nil
    }
    
    func hasContact(categoryA: UInt32, categoryB: UInt32) -> (bodyA: SKPhysicsBody, bodyB: SKPhysicsBody)? {
        let bodyA: SKPhysicsBody = self.bodyA
        let bodyB: SKPhysicsBody = self.bodyB
        if (bodyA.categoryBitMask == categoryA && bodyB.categoryBitMask == categoryB) {
            return (bodyA, bodyB)
        }
        if (bodyA.categoryBitMask == categoryB && bodyB.categoryBitMask == categoryA) {
            return (bodyB, bodyA)
        }
        return nil
    }
}
