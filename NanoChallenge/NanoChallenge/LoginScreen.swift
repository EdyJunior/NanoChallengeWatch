//
//  LoginScreen.swift
//  NanoChallenge
//
//  Created by padrao on 08/11/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import UIKit
import SpriteKit

class LoginScreen: SKScene, UITextFieldDelegate{
    
    var textField:UITextField?
    
    override func didMove(to view: SKView) {
        //textField = UITextField.init(frame: CGRect( self.size.width/2, self.size.height/2+20, 200, 40))
        textField = UITextField(frame: CGRect(x: 100, y: self.size.height - 50, width: 200, height: 40))
        //textField?.center = (self.view?.center)!
        textField?.borderStyle = .roundedRect
        textField?.textColor = SKColor.blue
        //textField.font = [UIFont systemFontOfSize:17.0]
        textField?.placeholder = "Enter your name here"
        textField?.backgroundColor = SKColor.white
        textField?.autocorrectionType = .default
        textField?.keyboardType = .default
        textField?.clearButtonMode = .whileEditing
        textField?.delegate = self
        self.view?.addSubview(textField!)
    }
    
    override func sceneDidLoad() {
        createTama()
    }
    
    func createTama() {
        
        let bicho0 = SKSpriteNode(imageNamed: "Coelho_1-0")
        bicho0.name = "rabbit"
        bicho0.size = CGSize(width: scene!.size.width * 0.3, height: scene!.size.height * 0.3)
        bicho0.position = CGPoint(x: self.frame.width/2 , y:self.frame.height - bicho0.frame.height/2)
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
            if (textField?.text?.isEmpty)!{
                print("you must enter a name")
            }
            else{
                //go to next scene
            }
                
        }
    
    }
    
    

}
