//
//  AppDelegate.swift
//  Background fetch capabilities
//
//  Created by HackerU on 14/01/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var newsItems:[NewsItem] = [NewsItem]()


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        newsItems.append(NewsItem(text: "News item 1", date: NSDate()))
        application.setMinimumBackgroundFetchInterval(UIApplicationBackgroundFetchIntervalMinimum)
        return true
    }
    
    func fetchNewsItems()->Bool{
        let item = NewsItem(text: "News item \(newsItems.count + 1)", date: NSDate())
        newsItems.append(item)
        
        let notification = NSNotification(name: "newNewsItem", object: nil)
        NSNotificationCenter.defaultCenter().postNotification(notification)
        
        return true
    }
    
    func application(application: UIApplication, performFetchWithCompletionHandler completionHandler: (UIBackgroundFetchResult) -> Void) {
        if fetchNewsItems(){
            completionHandler(.NewData)
        }else{
            completionHandler(.NoData)
        }
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
        let notification = NSNotification(name: "enterForeground", object: nil)
        NSNotificationCenter.defaultCenter().postNotification(notification)
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

