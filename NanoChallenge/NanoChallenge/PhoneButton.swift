//
//  PhoneButton.swift
//  NanoChallenge
//
//  Created by Augusto Falcão on 11/8/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import SpriteKit

class PhoneButton: SKNode {
    
    var defaultButton: SKSpriteNode
    var activeButton: SKSpriteNode
    var touchableArea: SKSpriteNode
    var action: ((_ button: PhoneButton) -> Void)?
    var enabled: Bool = true
    
    init(defaultButtonImage: String, activeButtonImage: String, buttonAction: ((_ button: PhoneButton) -> Void)? = nil) {
        
        defaultButton = SKSpriteNode(imageNamed: defaultButtonImage)
        activeButton = SKSpriteNode(imageNamed: activeButtonImage)
        touchableArea = SKSpriteNode()
        activeButton.isHidden = true
        action = buttonAction
        
        super.init()
        
        isUserInteractionEnabled = true
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if touchableArea.contains((touches.first?.location(in: self))!) {
            if action != nil && enabled {
                activeButton.isHidden = false
                defaultButton.isHidden = true
                action!(self)
            }
        }
    }
    
    func setSizeAndPosition(_ size: CGSize, position: CGPoint, areaFactor factor: CGFloat) {
        
        defaultButton.size = size
        activeButton.size = size
        
        touchableArea = SKSpriteNode()
        touchableArea.size = CGSize(width: size.width * factor, height: size.height * factor)
        touchableArea.position = position
        
//        touchableArea.color = .blue
//        touchableArea.alpha = 0.5
        
        touchableArea.addChild(defaultButton)
        touchableArea.addChild(activeButton)
        addChild(touchableArea)
    }
    
}
