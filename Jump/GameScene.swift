//
//  GameScene.swift
//  Jump
//
//  Created by MacStudent on 2019-06-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    //making outlets for the sprites
    // outlets means variables
    var robot:SKNode?
    var poop:SKNode?
    var ground:SKNode?
    
    override func didMove(to view: SKView) {
        
        //initialize sprite variables
        self.robot = self.childNode(withName: "robot")
        self.poop = self.childNode(withName: "poop")
        self.ground = self.childNode(withName: "ground")
        
        
        
          //make the poop move back and forth forever
        
        // 1. make sk action
            // move left action
            let m1  = SKAction.moveBy(x: -300, y: 0, duration: 2)
            //move right action
            let m2  = SKAction.moveBy(x: 300, y: 0, duration: 2)
        // 2. put actions into a sequence
            let seq = SKAction.sequence([m1,m2])
        //3. apply sequence to sprite (run forever
        self.poop!.run(SKAction.repeatForever(seq))
        
        
}
    
    //function to detect touches
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //to apply the impulse (force) we need a physics definition body (two ways either by code or by changing properties
        //read slides (spritekit + physics)
        //apply physics definition to the robot and ground(uncheck all options) by properties
        
        //this action takes x and y values (adjust according to the sprite size) and duraiton
        let jumpAction = SKAction.applyImpulse(CGVector(dx:0,dy: 5500), duration: 0.5)
        
        //apply the run action on robot
        self.robot!.run(jumpAction)
    }
    
  
    
    
}
