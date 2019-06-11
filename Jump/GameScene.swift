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
}
    
    //function to detect touches
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //to apply the impulse (force) we need a physics definition body (two ways either by code or by changing properties
        //read slides (spritekit + physics)
        //apply physics definition to the robot and ground(uncheck all options) by properties
        
        
        
    }
}
