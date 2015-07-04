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
    }

    func jump() {
        let jumpUp = SKAction.moveToY(385, duration: 0.7)

        self.sprite.runAction(jumpUp, completion: { () -> Void in
            let jumpDown = SKAction.moveToY(185, duration: 0.8)
            self.sprite.runAction(jumpDown)
        })
    }
    
}
