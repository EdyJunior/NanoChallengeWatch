//
//  ActionsScene.swift
//  NanoChallenge
//
//  Created by Edvaldo Junior on 08/11/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import SpriteKit
import WatchKit

class ActionsScene: SKScene {
    
    override func sceneDidLoad() {
        createButtons()
    }
    
    func createButtons() {
        
        let sSize = scene!.size
        
        let buttonsSize = CGSize(width: sSize.width * 0.2, height: sSize.width * 0.2)
        
        let eatPos = CGPoint(x: -sSize.width * 0.4, y: sSize.height * 0.4)
        let eatBtn = Button(defaultButtonImage: "icon-0", activeButtonImage: "icon-0")
        eatBtn.setSizeAndPosition(buttonsSize, position: eatPos, areaFactor: 1)
        eatBtn.action = eatAction
        addChild(eatBtn)
        
        let bathPos = CGPoint(x: 0, y: sSize.height * 0.4)
        let bathBtn = Button(defaultButtonImage: "icon-1", activeButtonImage: "icon-1")
        bathBtn.setSizeAndPosition(buttonsSize, position: bathPos, areaFactor: 1)
        addChild(bathBtn)
        
        let touchPos = CGPoint(x: sSize.width * 0.4, y: sSize.height * 0.4)
        let touchBtn = Button(defaultButtonImage: "icon-2", activeButtonImage: "icon-2")
        touchBtn.setSizeAndPosition(buttonsSize, position: touchPos, areaFactor: 1)
        addChild(touchBtn)
        
        let curePos = CGPoint(x: -sSize.width * 0.2, y: sSize.height * 0.4)
        let cureBtn = Button(defaultButtonImage: "icon-3", activeButtonImage: "icon-3")
        cureBtn.setSizeAndPosition(buttonsSize, position: curePos, areaFactor: 1)
        addChild(cureBtn)
        
        let sleepPos = CGPoint(x: sSize.width * 0.2, y: sSize.height * 0.4)
        let sleepBtn = Button(defaultButtonImage: "icon-4", activeButtonImage: "icon-4")
        sleepBtn.setSizeAndPosition(buttonsSize, position: sleepPos, areaFactor: 1)
        addChild(sleepBtn)
    }
    
    func eatAction(_ button: Button) {
        print("Edvaldo é o universo!")
    }
}
