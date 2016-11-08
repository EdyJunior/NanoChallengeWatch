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
        createTama()
        createLevelLabel()
        createExperienceLabel()
        createStaminaLabel()
        createButtons()
        
        
        self.isUserInteractionEnabled = false
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
    
    func createLevelLabel() {
        let levelLabel = SKLabelNode(text: "LVL: 12")
        levelLabel.position = CGPoint(x: -mySize.width * 0.6, y: mySize.height * 0.75)
        levelLabel.fontSize = mySize.height * 0.06
        addChild(levelLabel)
    }
    
    func createExperienceLabel() {
        let experienceLabel = SKLabelNode(text: "XP: 520")
        experienceLabel.position = CGPoint(x: 0.0, y: mySize.height * 0.75)
        experienceLabel.fontSize = mySize.height * 0.06
        addChild(experienceLabel)
    }
    
    func createStaminaLabel() {
        let staminaLabel = SKLabelNode(text: "STA: 04")
        staminaLabel.position = CGPoint(x: mySize.width * 0.6, y: mySize.height * 0.75)
        staminaLabel.fontSize = mySize.height * 0.06
        addChild(staminaLabel)
    }
    
    func createButtons() {
        
        var sSize = CGSize(width: CGFloat(1.0), height: CGFloat(1.0))
        sSize = mySize
        
        let buttonsSize = CGSize(width: sSize.height * 0.15, height: sSize.height * 0.15)
        
        let eatPos = CGPoint(x: sSize.width * -0.6, y: sSize.height * -0.55)
        let eatBtn = PhoneButton(defaultButtonImage: "icon-4", activeButtonImage: "icon-4")
        eatBtn.setSizeAndPosition(buttonsSize, position: eatPos, areaFactor: 1)
        eatBtn.action = { (button: PhoneButton) -> Void in print("Edvaldo é o universo!") }
        eatBtn.action = eatAction
        addChild(eatBtn)
        
        let bathPos = CGPoint(x: sSize.width * -0.2, y: sSize.height * -0.55)
        let bathBtn = PhoneButton(defaultButtonImage: "icon-1", activeButtonImage: "icon-1")
        bathBtn.setSizeAndPosition(buttonsSize, position: bathPos, areaFactor: 1)
        addChild(bathBtn)
        
        let touchPos = CGPoint(x: sSize.width * 0.2, y: sSize.height * -0.55)
        let touchBtn = PhoneButton(defaultButtonImage: "icon-2", activeButtonImage: "icon-2")
        touchBtn.setSizeAndPosition(buttonsSize, position: touchPos, areaFactor: 1)
        addChild(touchBtn)
        
        let curePos = CGPoint(x: sSize.width * 0.6, y: sSize.height * -0.55)
        let cureBtn = PhoneButton(defaultButtonImage: "icon-3", activeButtonImage: "icon-3")
        cureBtn.setSizeAndPosition(buttonsSize, position: curePos, areaFactor: 1)
        addChild(cureBtn)
        
        let sleepPos = CGPoint(x: sSize.width * -0.6, y: sSize.height * -0.8)
        let sleepBtn = PhoneButton(defaultButtonImage: "icon-4", activeButtonImage: "icon-4")
        sleepBtn.setSizeAndPosition(buttonsSize, position: sleepPos, areaFactor: 1)
        addChild(sleepBtn)
        
        let trainPos = CGPoint(x: sSize.width * -0.2, y: sSize.height * -0.8)
        let trainBtn = PhoneButton(defaultButtonImage: "icon-0", activeButtonImage: "icon-0")
        trainBtn.setSizeAndPosition(buttonsSize, position: trainPos, areaFactor: 1)
        addChild(trainBtn)
        
        let studyPos = CGPoint(x: sSize.width * 0.2, y: sSize.height * -0.8)
        let studyBtn = PhoneButton(defaultButtonImage: "icon-1", activeButtonImage: "icon-1")
        studyBtn.setSizeAndPosition(buttonsSize, position: studyPos, areaFactor: 1)
        addChild(studyBtn)
        
        let statusPos = CGPoint(x: sSize.width * 0.6, y: sSize.height * -0.8)
        let statusBtn = PhoneButton(defaultButtonImage: "icon-2", activeButtonImage: "icon-2")
        statusBtn.setSizeAndPosition(buttonsSize, position: statusPos, areaFactor: 1)
        addChild(statusBtn)
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
