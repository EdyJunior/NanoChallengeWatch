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
        
        createLabels()
        createTama()
    }
    
    func createLabels() {
        
        let fontName = "Geeza Pro"
        let fontSize = scene!.size.height * 0.08
        
        let nivelPos = CGPoint(x: -scene!.size.width * 0.35, y: scene!.size.height * 0.35)
        let nivelLabel = SKLabelNode(text: "lv: 12")
        nivelLabel.setLabel(size: fontSize, font: fontName, color: .white, position: nivelPos)
        scene!.addChild(nivelLabel)
        
        let xpPos = CGPoint(x: 0, y: scene!.size.height * 0.35)
        let xpLabel = SKLabelNode(text: "xp: 22")
        xpLabel.setLabel(size: fontSize, font: fontName, color: .white, position: xpPos)
        scene!.addChild(xpLabel)
        
        let stmPos = CGPoint(x: +scene!.size.width * 0.35, y: scene!.size.height * 0.35)
        let stmLabel = SKLabelNode(text: "st: 12")
        stmLabel.setLabel(size: fontSize, font: fontName, color: .white, position: stmPos)
        scene!.addChild(stmLabel)
    }
    
    func createTama() {
        
        let bicho = SKSpriteNode(imageNamed: "Coelho_1-0")
        bicho.size = CGSize(width: scene!.size.width * 0.5, height: scene!.size.height * 0.4)
        let atlas = SKTextureAtlas(named: "Coelho_1")
        var frames = [SKTexture]()
        
        for textureName in atlas.textureNames{
            frames.append(atlas.textureNamed(textureName))
        }
        
        bicho.run(SKAction.repeatForever(SKAction.animate(with: frames, timePerFrame: 0.4)))
        scene!.addChild(bicho)
    }
}
