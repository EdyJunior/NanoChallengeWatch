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

class ActionController: WKInterfaceController, WCSessionDelegate {
    
    let session = WCSession.default()
    
    override func awake(withContext context: Any?) {
        
        super.awake(withContext: context)
        
        if (WCSession.isSupported()) {
            session.delegate = self
            session.activate()
        }
    }
    
    @IBAction func eatAction() {
        print("Edvaldo Universo!")
        let stamina: Int = 100
        print("\n\n\n\n\n")
        session.sendMessage(["a" : stamina], replyHandler: nil, errorHandler: {
            (Error) in
            if Error != nil {
                print("\n\n\n\n\n\(Error)\n\n\n")
            }
        })
        pop()
    }
    
    //WCSession Protocolo
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
}
