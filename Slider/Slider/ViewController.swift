//
//  ViewController.swift
//  Slider
//
//  Created by HackerU on 21/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var slider:UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        slider = UISlider(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        slider.center = view.center
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 50
        slider.continuous = false
        slider.addTarget(self, action: "sliderValueChanged:", forControlEvents: .ValueChanged)
        slider.setThumbImage(UIImage(named: "dima1"), forState: .Normal)
        view.addSubview(slider)        
    }
    
    func sliderValueChanged(sender:UISlider){
        print(sender.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

