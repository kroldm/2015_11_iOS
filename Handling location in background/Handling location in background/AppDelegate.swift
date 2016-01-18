//
//  AppDelegate.swift
//  Handling location in background
//
//  Created by HackerU on 18/01/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit
import CoreLocation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, CLLocationManagerDelegate {

    var window: UIWindow?
    
    var locationManager:CLLocationManager!
    var isExecutionInBackground = false


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        locationManager = CLLocationManager()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        
        return true
    }
    
    func locationManager(manager: CLLocationManager, didUpdateToLocation newLocation: CLLocation, fromLocation oldLocation: CLLocation) {
        if isExecutionInBackground{
            /* don't update ui in background */
        }else{
            /* may be heavy stuff */
        }
        print("location lat:\(newLocation.coordinate.latitude) long:\(newLocation.coordinate.longitude)")
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        isExecutionInBackground = true
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
    }

    func applicationWillEnterForeground(application: UIApplication) {
        isExecutionInBackground = false
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

