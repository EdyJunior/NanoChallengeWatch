//
//  FeedScreen.swift
//  NanoChallenge
//
//  Created by padrao on 08/11/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import UIKit
import SpriteKit

class FeedScreen: SKScene {
    
    var healthBar: HealthBar?
    var buttonCake: SKSpriteNode?
    
    
    override func didMove(to view: SKView) {
        healthBar = HealthBar.init(parentView: view)
        healthBar?.position = CGPoint(x: view.frame.width - 10 , y: view.frame.height - 40)
        self.addChild(healthBar!)
        
        buttonCake = SKSpriteNode(imageNamed: "cake.png")
        buttonCake?.name = "buttonCake"
        buttonCake?.position = CGPoint(x: view.frame.width/2, y: 100)
        buttonCake?.size = CGSize(width: view.frame.width/4, height: 50)
        self.addChild(buttonCake!)
    }
    
    override func sceneDidLoad() {
        createTama()
    }
    
    func createTama() {
        
        let bicho0 = SKSpriteNode(imageNamed: "Coelho_1-0")
        bicho0.name = "rabbit"
        bicho0.size = CGSize(width: scene!.size.width * 0.3, height: scene!.size.height * 0.3)
        bicho0.position = CGPoint(x: self.frame.width/2 , y:self.frame.height/2)
        let atlas = SKTextureAtlas(named: "Coelho_1")
        var frames = [SKTexture]()
        
        for textureName in atlas.textureNames{
            frames.append(atlas.textureNamed(textureName))
        }
        
        bicho0.run(SKAction.repeatForever(SKAction.animate(with: frames, timePerFrame: 0.4)))
        scene!.addChild(bicho0)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        /* Called when a touch begins */
        let touch = touches.first
        let location = touch?.location(in: self)
        
        let node = self.atPoint(location!)
        if node.name == "rabbit"{
            
            //healthBar?.setHealth(fraction: 0)
            healthBar?.decrease()
        }
        if node.name == "buttonCake"{
            healthBar?.increase()
        }
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        //healthBar?.setHealth(fraction: 0)
        
    }
    

}
