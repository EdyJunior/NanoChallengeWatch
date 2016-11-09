//
//  WatchSessionManager.swift
//  NanoChallenge
//
//  Created by Augusto Falcão on 11/9/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import Foundation
import WatchConnectivity
import UIKit


class WatchSessionManager: NSObject, WCSessionDelegate {
    
    static let sharedManager = WatchSessionManager()
    
    private override init() {
        super.init()
    }
    
    // Keep a reference for the session,
    // which will be used later for sending / receiving data
    let session = WCSession.default()
    
    // Activate Session
    // This needs to be called to activate the session before first use!
    func startSession() {
        session.delegate = self
        session.activate()
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        //
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        //
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        //
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        
        //let v = viewController as! ViewController
        
//        if (message["a"] != nil){
//            v.lblChange.text = message["a"]! as? String
//            v.view.backgroundColor = UIColor.red
//        } else {
//            v.lblChange.text = message["b"] as? String
//            v.view.backgroundColor = UIColor.green
//        }
        
    }
    
}
