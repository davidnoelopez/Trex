//
//  Hero.swift
//  Trex
//
//  Created by David Lopez on 7/4/15.
//  Copyright (c) 2015 David Lopez. All rights reserved.
//

import Foundation
import SpriteKit

class Hero: NSObject {
    var sprite: SKSpriteNode!

    init(spriteName: String){
        self.sprite = SKSpriteNode(imageNamed: spriteName)
        self.sprite.physicsBody = SKPhysicsBody(texture: SKTexture(imageNamed: spriteName), size: self.sprite.size)
        if let physics = self.sprite.physicsBody{
            physics.affectedByGravity = true
            physics.dynamic = true
            physics.allowsRotation = false
            physics.linearDamping = 0.8
            physics.categoryBitMask = 1
        }
    }
    func jump() {
        if ( self.sprite.physicsBody!.resting ) {
        }
        self.sprite.physicsBody?.applyImpulse(CGVectorMake(0, 100), atPoint: CGPointZero)
    }
    
}
