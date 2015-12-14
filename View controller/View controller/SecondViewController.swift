//
//  SecondViewController.swift
//  View controller
//
//  Created by HackerU on 14/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        label.text = "second"
        label.center = view.center
        label.textAlignment = .Center
        view.addSubview(label)

        let button = UIButton(type: .System)
        button.frame = label.frame
        button.frame.origin.y = label.frame.maxY + 10
        button.setTitle("goto first", forState: .Normal)
        button.addTarget(self, action: "goToFirst:", forControlEvents: .TouchUpInside)
        view.addSubview(button)
        
        let first:ViewController = presentingViewController! as! ViewController
        first.stamProperty = 8
    }
    
    func goToFirst(sender:UIButton){
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
