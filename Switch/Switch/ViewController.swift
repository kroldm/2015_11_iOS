//
//  ViewController.swift
//  Switch
//
//  Created by HackerU on 14/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mainSwitch:UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainSwitch = UISwitch(frame: CGRect(x: 100, y: 100, width: 0, height: 0))
        view.addSubview(mainSwitch)
        
        mainSwitch.setOn(true, animated: false)
        if mainSwitch.on{
            
        }else{
            
        }
        
        mainSwitch.addTarget(self, action: "switchIsChanged:", forControlEvents: .ValueChanged)
        
        mainSwitch.tintColor = UIColor.redColor()
        mainSwitch.onTintColor = UIColor.blueColor()
        mainSwitch.thumbTintColor = UIColor.greenColor()
    }
    
    func switchIsChanged(sender:UISwitch){
        print(sender.on)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

