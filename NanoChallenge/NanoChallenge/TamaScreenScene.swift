//
//  TamaScreenScene.swift
//  NanoChallenge
//
//  Created by Augusto Falcão on 11/8/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import SpriteKit

class TamaScreenScene: SKScene {
    
    var lastUpdateTime : TimeInterval = 0
    
    var mySize = UIScreen.main.bounds.size
    
    override func sceneDidLoad() {
        
        self.lastUpdateTime = 0
        //createTest()
        createTama()
        createButtons()
        
        
        self.isUserInteractionEnabled = false
    }

    func createTest() {
        let test = SKSpriteNode(imageNamed: "Coelho_1-0")
        test.setScale(0.004)
        //test.size = CGSize(width: 0.5, height: 0.5)
        test.zPosition = 1000
        test.position = CGPoint(x: 0.5, y: 0.5)
        addChild(test)
    }
    
    func createTama() {
        
        let bicho = SKSpriteNode(imageNamed: "Coelho_1-0")
        bicho.position = CGPoint(x: 0.5, y: 0.5)
        bicho.size = CGSize(width: self.size.width * 0.5, height: self.size.height * 0.4)
        let atlas = SKTextureAtlas(named: "Coelho_1")
        var frames = [SKTexture]()
        
        for textureName in atlas.textureNames{
            frames.append(atlas.textureNamed(textureName))
        }
        
        bicho.run(SKAction.repeatForever(SKAction.animate(with: frames, timePerFrame: 0.3)))
        self.addChild(bicho)
    }
    
    func createButtons() {
        
        let sSize = CGSize(width: CGFloat(1.0), height: CGFloat(1.0))
        
        let buttonsSize = CGSize(width: sSize.width * 0.25, height: sSize.width * 0.25)
        
        let eatPos = CGPoint(x: sSize.width * 0.15, y: sSize.height * 0.7)
        let eatBtn = PhoneButton(defaultButtonImage: "icon-4", activeButtonImage: "icon-4")
        eatBtn.setSizeAndPosition(buttonsSize, position: eatPos, areaFactor: 1)
        eatBtn.action = { (button: PhoneButton) -> Void in print("Edvaldo é o universo!") }
        eatBtn.action = eatAction
        addChild(eatBtn)
        
        let bathPos = CGPoint(x: sSize.width * 0.5, y: sSize.height * 0.7)
        let bathBtn = PhoneButton(defaultButtonImage: "icon-1", activeButtonImage: "icon-1")
        bathBtn.setSizeAndPosition(buttonsSize, position: bathPos, areaFactor: 1)
        addChild(bathBtn)
        
        let touchPos = CGPoint(x: sSize.width * 0.85, y: sSize.height * 0.7)
        let touchBtn = PhoneButton(defaultButtonImage: "icon-2", activeButtonImage: "icon-2")
        touchBtn.setSizeAndPosition(buttonsSize, position: touchPos, areaFactor: 1)
        addChild(touchBtn)
        
        let curePos = CGPoint(x: sSize.width * 0.3, y: sSize.height * 0.35)
        let cureBtn = PhoneButton(defaultButtonImage: "icon-3", activeButtonImage: "icon-3")
        cureBtn.setSizeAndPosition(buttonsSize, position: curePos, areaFactor: 1)
        addChild(cureBtn)
        
        let sleepPos = CGPoint(x: sSize.width * 0.7, y: sSize.height * 0.35)
        let sleepBtn = PhoneButton(defaultButtonImage: "icon-4", activeButtonImage: "icon-4")
        sleepBtn.setSizeAndPosition(buttonsSize, position: sleepPos, areaFactor: 1)
        addChild(sleepBtn)
    }
    
    func eatAction (_ button: PhoneButton) {
        print("Edvaldo é o universo!")
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
        // Initialize _lastUpdateTime if it has not already been
        if (self.lastUpdateTime == 0) {
            self.lastUpdateTime = currentTime
        }
        
        // Calculate time since last update
        let dt = currentTime - self.lastUpdateTime
        
        self.lastUpdateTime = currentTime
    }
}
