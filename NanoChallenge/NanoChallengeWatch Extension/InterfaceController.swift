//
//  InterfaceController.swift
//  NanoChallengeWatch Extension
//
//  Created by Edvaldo Junior on 07/11/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var scene: WKInterfaceSKScene!
    
    override func awake(withContext context: Any?) {
        
        super.awake(withContext: context)
        let skScene = GameScene(fileNamed: "GameScene")
        skScene!.scaleMode = .aspectFill
        scene.presentScene(skScene)
    }
    
    
    @IBAction func handleSwipe(swipeGesture gest: WKSwipeGestureRecognizer) {
        
        let actionScene = ActionsScene()
        scene.presentScene(actionScene, transition: .push(with: .left, duration: 0.5))
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
}
