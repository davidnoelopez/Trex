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
let hero = Hero(spriteName: "man")
let obstacle = Obstacle(spriteName: "Cactus")

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

        hero.sprite.anchorPoint = CGPointZero
        hero.sprite.position = CGPointMake(70, 185)
        hero.sprite.zPosition = 0
        self.addChild(hero.sprite)
        
        obstacle.sprite.anchorPoint = CGPointZero
        obstacle.sprite.position = CGPointMake(800, 185)
        obstacle.sprite.zPosition = 0
        self.addChild(obstacle.sprite)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        hero.jump()
    }
   
    override func update(currentTime: CFTimeInterval) {
        self.moveBackground()
        if ( obstacle.checkBoundaries() ) {
            NSLog("Remove from stack")
        }
    }

    
    func moveBackground() {
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
