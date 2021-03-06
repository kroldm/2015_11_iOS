//
//  AppDelegate.swift
//  Playing audio in background
//
//  Created by HackerU on 18/01/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit
import AVFoundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, AVAudioPlayerDelegate {

    var window: UIWindow?
    
    var audioPlayer:AVAudioPlayer!


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
        dispatch_async(queue) { [weak self]() -> Void in
            let audioSession = AVAudioSession.sharedInstance()
            NSNotificationCenter.defaultCenter().addObserver(self!, selector: "handleInterruption:", name: AVAudioSessionInterruptionNotification, object: nil)
            do{
                try audioSession.setActive(true)
                try audioSession.setCategory(AVAudioSessionCategoryPlayback)
                let filePath = NSBundle.mainBundle().pathForResource("shir", ofType: "mp3")
                let fileData = try NSData(contentsOfFile: filePath!, options: NSDataReadingOptions.DataReadingMappedIfSafe)
                self!.audioPlayer = try AVAudioPlayer(data: fileData)
                self!.audioPlayer!.delegate = self
                if self!.audioPlayer!.prepareToPlay() && self!.audioPlayer!.play(){
                    print("successfully started playing")
                }else{
                    print("failed playing")
                }
            }catch{
                print("audio error")
            }
        }
        
        return true
    }
    
    func handleInterruption(notification:NSNotification){
        let val = notification.userInfo![AVAudioSessionInterruptionTypeKey]
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

