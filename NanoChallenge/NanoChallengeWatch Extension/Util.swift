//
//  Util.swift
//  NanoChallenge
//
//  Created by Edvaldo Junior on 08/11/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import SpriteKit

extension SKLabelNode {
    
    func setLabel(size: CGFloat, font: String, color: UIColor, position: CGPoint) {
        
        self.fontSize = size
        self.fontName = font
        self.fontColor = color
        self.position = position
    }
}
