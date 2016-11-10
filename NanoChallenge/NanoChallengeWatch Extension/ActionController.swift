//
//  ActionController.swift
//  NanoChallenge
//
//  Created by Augusto Falcão on 11/8/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import Foundation
import WatchKit
import WatchConnectivity

class ActionController: WKInterfaceController {
    
    let session = WCSession.default()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    }
    
    @IBAction func eatAction() {
        let stamina: Int = 100
        if session.isReachable == true {
            session.sendMessage(["a" : stamina], replyHandler: nil, errorHandler: nil)
        }
        pop()
    }
    
}
