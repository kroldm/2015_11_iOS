//
//  AppDelegate.swift
//  Long running task in background
//
//  Created by HackerU on 14/01/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var backgroundTaskIdentifier:UIBackgroundTaskIdentifier = UIBackgroundTaskInvalid
    
    var myTimer:NSTimer?
    
    func timerMethod(sender:NSTimer){
        let backgroundTimeRemaining = UIApplication.sharedApplication().backgroundTimeRemaining
        print("remain \(backgroundTimeRemaining) sec")
    }


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        backgroundTaskIdentifier = application.beginBackgroundTaskWithName("task1", expirationHandler: { [weak self]() -> Void in
            self!.endBackgroundTask()
        })

        myTimer = NSTimer(timeInterval: 1.0, target: self, selector: "timerMethod:", userInfo: nil, repeats: true)
    }
    
    func endBackgroundTask(){
        dispatch_async(dispatch_get_main_queue()) { [weak self]() -> Void in
            if let theTimer = self!.myTimer{
                theTimer.invalidate()
                self!.myTimer = nil
                
                UIApplication.sharedApplication().endBackgroundTask(self!.backgroundTaskIdentifier)
                self!.backgroundTaskIdentifier = UIBackgroundTaskInvalid
            }
        }
    }

    func applicationWillEnterForeground(application: UIApplication) {
        if backgroundTaskIdentifier != UIBackgroundTaskInvalid{
            endBackgroundTask()
        }
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

