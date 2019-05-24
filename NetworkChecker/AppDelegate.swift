//
//  AppDelegate.swift
//  NetworkChecker
//
//  Created by yosuke on 2019/05/24.
//  Copyright © 2019 yosuke.nakayama. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    @IBOutlet weak var IPAddr1: NSTextField!
    
    @IBOutlet weak var StartBtn: NSButtonCell!
    @IBOutlet weak var StopBtn: NSButton!
    
    func applicationDidFinishLaunching(_ aNotification: Notification)
    {
        // Insert code here to initialize your application
        StartBtn.isEnabled = true;
        StopBtn.isEnabled = false;
    }

    func applicationWillTerminate(_ aNotification: Notification)
    {
        // Insert code here to tear down your application
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool
    {
        /* ウインドウを閉じた時にアプリも終了させる */
        return true;
    }


    @IBAction func Start(_ sender: Any)
    {
        StartBtn.isEnabled = false;
        StopBtn.isEnabled = true;
    }
    
    
    @IBAction func Stop(_ sender: Any)
    {
        StartBtn.isEnabled = true;
        StopBtn.isEnabled = false;
    }
}

