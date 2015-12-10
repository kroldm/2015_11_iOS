//
//  ViewController.swift
//  Adding buttons
//
//  Created by HackerU on 10/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var button:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button = UIButton(type: .System)
        button.frame = CGRect(x: 110, y: 70, width: 100, height: 45)
        button.setTitle("press me", forState: .Normal)
        button.addTarget(self, action: "buttonIsPressed:", forControlEvents: .TouchDown)
        button.addTarget(self, action: "buttonIsTapped:", forControlEvents: .TouchUpInside)
        view.addSubview(button)
    }
    
    func buttonIsPressed(sender:UIButton){
        print("button was pressed")
    }
    
    func buttonIsTapped(sender:UIButton){
        print("button is tapped")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

