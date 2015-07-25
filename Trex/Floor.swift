//
//  Floor.swift
//  Trex
//
//  Created by David Lopez on 7/25/15.
//  Copyright (c) 2015 David Lopez. All rights reserved.
//

import Foundation
import SpriteKit

class Floor: NSObject {
    var sprite: SKSpriteNode!

    init(kind: Int, location: CGPoint){
        var spriteName: String
        switch kind{
        case 1:
            spriteName = "grass.png"
        default:
            spriteName = "grass.png"
        }
        self.sprite = SKSpriteNode(imageNamed: spriteName)
        self.sprite.physicsBody = SKPhysicsBody(texture: SKTexture(imageNamed: spriteName), size: self.sprite.size)
        if let physics = self.sprite.physicsBody{
            physics.affectedByGravity = false
            physics.dynamic = false
            physics.allowsRotation = false
            physics.linearDamping = 0.0
            physics.angularDamping = 0.0
            physics.density = 0.5
            physics.categoryBitMask = 2
        }

        self.sprite.anchorPoint = CGPointZero
        self.sprite.position = location
        self.sprite.zPosition = 0
    }
}
