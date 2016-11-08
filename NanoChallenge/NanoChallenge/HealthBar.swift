//
//  HealthBar.swift
//  NanoChallenge
//
//  Created by padrao on 08/11/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import UIKit
import SpriteKit

class HealthBar: SKNode {
    
    var bar: SKShapeNode?
    var barWidth: CGFloat?
    
    init(parentView: UIView) {
        super.init()
        bar = SKShapeNode(rect: CGRect(origin: CGPoint(x: 0 , y: 0), size: CGSize.init(width: parentView.frame.width - 20, height: 20)), cornerRadius: 5.0)
        barWidth = parentView.frame.width - 20
        
        bar?.fillColor = SKColor.white
        self.addChild(bar!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setHealth(fraction: CGFloat){
        let reduceBar = SKAction.group([SKAction.resize(byWidth: -(bar?.frame.width)! * 0.2, height: 0, duration: 0)])
        bar?.run(SKAction.resize(byWidth: 200, height: 0, duration: 0))
    }
    
    /*public func setHealth(value: CGFloat){
        value = MIN(MAX(0.0, fraction), 1.0)// clamp health between 0.0 and 1.0
        SKTexture *textureFrac = [SKTexture textureWithRect:CGRectMake(0, 0, fraction, 1.0) inTexture:self.texture];
        // check docs to understand why you can pass in self.texture as the last parameter every time
        
        self.size = CGSizeMake(fraction * _textureWidth, self.size.height);
        self.texture = textureFrac;
    }*/

}
