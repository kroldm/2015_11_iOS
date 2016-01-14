//
//  ViewController.swift
//  NSTimer
//
//  Created by HackerU on 14/01/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer:NSTimer!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "tick:", userInfo: nil, repeats: true)
    }
    
    func tick(sender:NSTimer){
        print("tick \(counter++)")
    }
    
    deinit{
        timer.invalidate()
        timer = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

