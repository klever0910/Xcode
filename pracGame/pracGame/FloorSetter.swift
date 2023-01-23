//
//  File.swift
//  pracGame
//
//  Created by Mac on 19.01.2023.
//  Copyright © 2023 Savelii Novikov. All rights reserved.
//

import SpriteKit

struct FloorPositionCreater {
    
    static func getFloorPositions(floorWidth: CGFloat, lenth: Int = 32, heightStep: CGFloat = 400) -> [CGPoint] {
        var positions = [CGPoint.zero]
        
        for _ in 1...lenth {
            let prevPosition = positions.last!
            let isRight = Bool.random()
            let x = isRight ? prevPosition.x + floorWidth : prevPosition.x - floorWidth
            let newPositoin = CGPoint(x: x, y: prevPosition.y + heightStep)
            positions.append(newPositoin)
        }
        
        return positions
    }
}

struct FloorSetter {
    let floor: SKNode
    let verticalSpacin: CGFloat
    let startPosition: CGPoint
    
    func setFloors(onNode node: SKNode, count: Int = 32) -> [SKNode] {
        let floorWidth = floor.calculateAccumulatedFrame().width
        let positions = FloorPositionCreater.getFloorPositions(floorWidth: floorWidth, lenth: count)
        var floors = [SKNode]()
        positions.forEach { position in
            let floor = self.floor.copy() as! SKNode
            floor.position = position.applying(.init(translationX: startPosition.x, y: startPosition.y))
            node.addChild(floor)
            floors.append(floor)
        }
        return floors
    }
}
