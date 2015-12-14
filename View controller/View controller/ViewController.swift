//
//  ViewController.swift
//  View controller
//
//  Created by HackerU on 14/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var secondViewController:SecondViewController?
    var stamProperty:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        label.text = "first"
        label.center = view.center
        label.textAlignment = .Center
        view.addSubview(label)
        
        let button = UIButton(type: .System)
        button.frame = label.frame
        button.frame.origin.y = label.frame.maxY + 10
        button.setTitle("goto second", forState: .Normal)
        button.addTarget(self, action: "goToSecond:", forControlEvents: .TouchUpInside)
        view.addSubview(button)
    }
    
    func goToSecond(sender:UIButton){
        if secondViewController == nil{
            secondViewController = SecondViewController()
        }
        presentViewController(secondViewController!, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

