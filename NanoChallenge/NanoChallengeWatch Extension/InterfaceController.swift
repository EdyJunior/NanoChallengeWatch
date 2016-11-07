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

    @IBOutlet var skInterface: WKInterfaceSKScene!
    
    override func awake(withContext context: Any?) {
        
        super.awake(withContext: context)
        if let scene = GameScene(fileNamed: "GameScene") {
            
        }
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }

}
