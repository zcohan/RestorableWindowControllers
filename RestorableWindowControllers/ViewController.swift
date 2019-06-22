//
//  ViewController.swift
//  RestorableWindowControllers
//
//  Created by ZC on 22/6/19.
//  Copyright © 2019 ZC. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBAction func makeAFriend(_ sender: Any) {
    
        let windowController = WindowControllersController.shared.makeNewWindowController()
        windowController.showWindow(nil)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

