//
//  ViewController.swift
//  Downloading data using NSURL session
//
//  Created by HackerU on 25/01/2016.
//  Copyright © 2016 Ofer Raviv. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NSURLSessionDelegate, NSURLSessionDataDelegate {

    var session: NSURLSession!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
        configuration.timeoutIntervalForRequest = 15.0
        
        session = NSURLSession(configuration: configuration, delegate: self, delegateQueue: nil)
        
        let url = NSURL(string: "http://www.yahoo.com")
        
        let task = session.dataTaskWithURL(url!) { [weak self](data:NSData?, response:NSURLResponse?, error:NSError?) -> Void in
            print("done")
            if error == nil && data != nil && data?.length > 0{
                let responseString = NSString(data: data!, encoding: NSUTF8StringEncoding)
                print(responseString)
            }
            self!.session.finishTasksAndInvalidate()
        }
        task.resume()
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

