//
//  Obstacle.swift
//  Trex
//
//  Created by Samuel Castillo on 25/07/15.
//  Copyright (c) 2015 David Lopez. All rights reserved.
//

import Foundation
import SpriteKit

class Obstacle: NSObject {
    var sprite: SKSpriteNode!
    
    init(spriteName: String){
        self.sprite = SKSpriteNode(imageNamed: spriteName)
        self.sprite.physicsBody = SKPhysicsBody(texture: SKTexture(imageNamed: "Cactus.png"),size: self.sprite.size)
        if let physics = self.sprite.physicsBody {
            physics.affectedByGravity = false
            physics.dynamic = true
            physics.velocity = CGVectorMake(-300, 0)
        }
    }
}



