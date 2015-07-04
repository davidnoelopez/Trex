//
//  GameScene.swift
//  Trex
//
//  Created by David Lopez on 7/3/15.
//  Copyright (c) 2015 David Lopez. All rights reserved.
//

import SpriteKit
let background1 = SKSpriteNode(imageNamed: "bg1")
let background2 = SKSpriteNode(imageNamed: "bg2")

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        background1.anchorPoint = CGPointZero
        background1.position = CGPointMake(0, 0)
        background1.zPosition = -15
        self.addChild(background1)
        
        background2.anchorPoint = CGPointZero
        background2.position = CGPointMake(background1.size.width, 0)
        background2.zPosition = -15
        self.addChild(background2)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        background1.position = CGPointMake(background1.position.x - 5, background1.position.y)
        background2.position = CGPointMake(background2.position.x - 5, background2.position.y)
        
        if(background1.position.x < -background1.size.width)
        {
            background1.position = CGPointMake(background2.position.x + background2.size.width, background1.position.y)
        }
        
        if(background2.position.x < -background2.size.width)
        {
            background2.position = CGPointMake(background1.position.x + background1.size.width, background2.position.y)
            
        }
    }
}
