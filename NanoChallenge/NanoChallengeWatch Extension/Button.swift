//
//  Button.swift
//  NanoChallenge
//
//  Created by Edvaldo Junior on 08/11/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import SpriteKit
import WatchKit

class Button: SKNode {
    
    var defaultButton: SKSpriteNode
    var activeButton: SKSpriteNode
    var touchableArea: SKSpriteNode
    var action: ((_ button: Button) -> Void)?
    var enabled: Bool = true
    
    init(defaultButtonImage: String, activeButtonImage: String, buttonAction: ((_ button: Button) -> Void)? = nil) {
        
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
    
    func handleTap(tapGesture: WKTapGestureRecognizer) {
        let location = tapGesture.locationInObject()
        if touchableArea.contains(location) {
            action!(self)
        }
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//
//        if touchableArea.contains((touches.first?.location(in: self))!) {
//            if action != nil && enabled {
//                activeButton.isHidden = false
//                defaultButton.isHidden = true
//                action!(self)
//            }
//        }
//    }
    
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
