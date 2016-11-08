//
//  ActionController.swift
//  NanoChallenge
//
//  Created by Augusto Falcão on 11/8/16.
//  Copyright © 2016 Edvaldo Junior. All rights reserved.
//

import Foundation
import WatchKit

class ActionController: WKInterfaceController {
    

    
    override func awake(withContext context: Any?) {
        
        super.awake(withContext: context)
        
    }
    
    @IBAction func eatAction() {
        print("Edvaldo Universo!")
        pop()
    }
}
