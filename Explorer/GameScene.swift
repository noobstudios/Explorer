//
//  GameScene.swift
//  Explorer
//
//  Created by Ian K. on 3/14/15.
//  Copyright (c) 2015 Noob Studios. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    
    
    
    
    
    
    
    
    
    
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        var bgImage = SKSpriteNode(imageNamed: "background.jpg")
        bgImage.position = CGPointMake(self.size.width/2, self.size.height/2)
        self.addChild(bgImage)
        
    }
    
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}