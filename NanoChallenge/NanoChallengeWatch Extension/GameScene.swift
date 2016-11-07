//
//  GameScene.swift
//  NanoChallengeWatch Extension
//
//  Created by Edvaldo Junior on 07/11/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import SpriteKit
import WatchKit

class GameScene: SKScene {
    
    override func sceneDidLoad() {
        
        let nivelLabel = SKLabelNode(text: "lv: 12")
        nivelLabel.fontSize = 30
        nivelLabel.fontName = "Arial"
        nivelLabel.fontColor = UIColor.white
        nivelLabel.position = CGPoint(x: -scene!.size.width * 0.35, y: scene!.size.height * 0.35)
        scene?.addChild(nivelLabel)
        
        let xpLabel = SKLabelNode(text: "xp: 22")
        xpLabel.fontSize = 30
        xpLabel.fontName = "Arial"
        xpLabel.fontColor = UIColor.white
        xpLabel.position = CGPoint(x: 0, y: scene!.size.height * 0.35)
        scene?.addChild(xpLabel)
        
        let stmLabel = SKLabelNode(text: "st: 12")
        stmLabel.fontSize = 30
        stmLabel.fontName = "Arial"
        stmLabel.fontColor = UIColor.white
        stmLabel.position = CGPoint(x: +scene!.size.width * 0.35, y: scene!.size.height * 0.35)
        scene?.addChild(stmLabel)
        
        let bicho = SKSpriteNode(imageNamed: ")
    }
}
