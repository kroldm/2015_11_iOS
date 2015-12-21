//
//  ViewController.swift
//  TextField
//
//  Created by HackerU on 21/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var textField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 35))
        textField.borderStyle = .RoundedRect
        textField.contentVerticalAlignment = .Center
        textField.textAlignment = .Center
        textField.text = "dima"
        textField.center = view.center
        view.addSubview(textField)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

