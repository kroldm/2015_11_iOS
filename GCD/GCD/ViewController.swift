//
//  ViewController.swift
//  GCD
//
//  Created by HackerU on 11/01/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var x = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton(type: .System);
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 30);
        button.center = view.center;
        button.setTitle("click me \(x)", forState: .Normal);
        button.addTarget(self, action: "handleClick:", forControlEvents: .TouchUpInside);
        view.addSubview(button);
    }
    
    func handleClick(sender:UIButton){
        sender.setTitle("click me \(++x)", forState: .Normal);
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) { () -> Void in
            var sum = 0;
            for var i=0;i<2000000000;i++ {
                sum++;
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

