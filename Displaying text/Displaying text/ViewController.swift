//
//  ViewController.swift
//  Displaying text
//
//  Created by HackerU on 10/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label = UILabel(frame: CGRect(x: 20, y: 100, width: 100, height: 70))
        label.text = "welcom to hackeru"
        label.numberOfLines = 3
        label.lineBreakMode = .ByWordWrapping
        label.font = UIFont.boldSystemFontOfSize(14)
        view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

