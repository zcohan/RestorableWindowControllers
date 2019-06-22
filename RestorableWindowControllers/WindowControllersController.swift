//
//  WindowControllers.swift
//  RestorableWindowControllers
//
//  Created by ZC on 22/6/19.
//  Copyright © 2019 ZC. All rights reserved.
//

import Cocoa

class WindowControllersController : NSObject, NSWindowRestoration {
    
    static let shared = WindowControllersController()
    
    var windowControllers: [RestorableWindowController] = []
    
    func makeNewWindowController() -> RestorableWindowController {
        
        let newWindowController = NSStoryboard.main?.instantiateController(withIdentifier: "RestorableWindowController") as! RestorableWindowController
        
        self.windowControllers.append(newWindowController)
        
        return newWindowController
        
    }
    
    // MARK: - NSWindowRestoration
    
    static func restoreWindow(withIdentifier identifier: NSUserInterfaceItemIdentifier, state: NSCoder, completionHandler: @escaping (NSWindow?, Error?) -> Void) {
        
        if identifier == NSUserInterfaceItemIdentifier(rawValue: "RestorableWindowController") {
            
            let windowController = self.shared.makeNewWindowController()
            
            windowController.wasRestored = true
            
            completionHandler(windowController.window, nil)
            
        }
        
    }
    
}
