//
//  AppDelegate.swift
//  RestorableWindowControllers
//
//  Created by ZC on 22/6/19.
//  Copyright © 2019 ZC. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    
    let windowControllersController = WindowControllersController.shared
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        
        if windowControllersController.windowControllers.isEmpty {
            print("Fresh start: a new window has been created")
            let windowController = windowControllersController.makeNewWindowController()
            windowController.showWindow(nil)
        }
        else {
            print("Windows have been restored")
        }
        
        
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    
}

