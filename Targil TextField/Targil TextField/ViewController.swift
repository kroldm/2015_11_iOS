//
//  ViewController.swift
//  Targil TextField
//
//  Created by HackerU on 24/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var textField:UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        textField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 35))
        textField.borderStyle = .RoundedRect
        textField.contentVerticalAlignment = .Center
        textField.delegate = self
        textField.textAlignment = .Center
        textField.text = ""
        textField.center = view.center
        view.addSubview(textField)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let text = textField.text as! NSString
        let wholeText = text.stringByReplacingCharactersInRange(range, withString: string)
        
        let c:unichar = (string as! NSString).characterAtIndex(0)
        print(c)
        
        return true
    }
}

