//
//  CustomWindowController.swift
//  RestorableWindowControllers
//
//  Created by ZC on 22/6/19.
//  Copyright © 2019 ZC. All rights reserved.
//

import Cocoa

class RestorableWindowController: NSWindowController {

    var wasRestored = false
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        
        self.shouldCascadeWindows = true
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
                    
        self.window?.isRestorable = true
        self.window?.restorationClass = WindowControllersController.self
        self.window?.identifier = NSUserInterfaceItemIdentifier(rawValue: "RestorableWindowController")
        
    }

}
