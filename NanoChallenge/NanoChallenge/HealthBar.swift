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
    var newBar = SKSpriteNode(color: SKColor.green, size: CGSize.init())
    let maxHealth = 100.0
    var actualHealth = 100.0
    
    init(parentView: UIView) {
        super.init()
        bar = SKShapeNode(rect: CGRect(origin: CGPoint(x: 0 , y: 0), size: CGSize.init(width: parentView.frame.width - 20, height: 20)), cornerRadius: 5.0)
        barWidth = parentView.frame.width - 20
        
        bar?.fillColor = SKColor.green
        //self.addChild(bar!)
        
        newBar.size = CGSize(width: parentView.frame.width - 20, height: 30)
        newBar.anchorPoint = CGPoint(x: 1, y: 0.5)
        self.addChild(newBar)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setHealth(fraction: CGFloat){
        bar?.run(SKAction.scaleX(to: 0.01, duration: 3))
    }
    
    public func decrease(){
        actualHealth -= 1
        print("actual health \(actualHealth)")
        let ratio = actualHealth / maxHealth
        //let ratio = 0.9
        //print("ratio \(ratio)")
        //let newSize = newBar.frame.width * CGFloat(ratio)
        let newSize = newBar.frame.width - 1
        newBar.run(SKAction.resize(toWidth: newSize, duration: 0.5))
    }
    
    public func increase(){
        actualHealth += 1
        print("actual health \(actualHealth)")
        //let ratio = maxHealth / actualHealth
        //let ratio = 1.1
        //print("ratio \(ratio)")
        //let newSize = newBar.frame.width * CGFloat(ratio)
        let newSize = newBar.frame.width + 1
        newBar.run(SKAction.resize(toWidth: newSize, duration: 0.5))
    }
    
    public func feed(){
        
        bar?.run(SKAction.scaleX(to: 1, duration: 3))
    }
    
    /*public func setHealth(value: CGFloat){
        value = MIN(MAX(0.0, fraction), 1.0)// clamp health between 0.0 and 1.0
        SKTexture *textureFrac = [SKTexture textureWithRect:CGRectMake(0, 0, fraction, 1.0) inTexture:self.texture];
        // check docs to understand why you can pass in self.texture as the last parameter every time
        
        self.size = CGSizeMake(fraction * _textureWidth, self.size.height);
        self.texture = textureFrac;
    }*/

}
