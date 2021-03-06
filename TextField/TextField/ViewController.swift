//
//  ViewController.swift
//  TextField
//
//  Created by HackerU on 21/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var textField:UITextField!
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 35))
        textField.borderStyle = .RoundedRect
        textField.contentVerticalAlignment = .Center
        textField.delegate = self
        textField.textAlignment = .Center
        textField.text = "dima"
        textField.center = view.center
        view.addSubview(textField)
        
        label = UILabel(frame: textField.frame)
        label.frame.origin.y = textField.frame.maxY + 10
        view.addSubview(label)
        showTextFieldLength(textField.text!)
    }
    
    func showTextFieldLength(text:String){
        var str = "character"
        let length = (text as! NSString).length
        if length != 1{
            str += "s"
        }
        label.text = "\(length) \(str)"
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let text = textField.text as! NSString
        let wholeText = text.stringByReplacingCharactersInRange(range, withString: string)
        showTextFieldLength(wholeText)
        
        let c:unichar = (string as! NSString).characterAtIndex(0)
        print(c)
        
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

