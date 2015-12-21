//
//  ViewController.swift
//  SharingOptions
//
//  Created by HackerU on 21/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var txtField:UITextField!
    var btnShare:UIButton!
    var activityViewController:UIActivityViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtField = UITextField(frame: CGRect(x: 20, y: 35, width: 280, height: 30))
        txtField.borderStyle = .RoundedRect
        txtField.placeholder = "Enter text here..."
        txtField.delegate = self
        view.addSubview(txtField)
        
        btnShare = UIButton(type: .System)
        btnShare.frame = CGRect(x: 20, y: 80, width: 280, height: 40)
        btnShare.setTitle("share", forState: .Normal)
        btnShare.addTarget(self, action: "handleShare:", forControlEvents: .TouchUpInside)
        view.addSubview(btnShare)
    }
    
    func handleShare(sender:UIButton){
        if txtField.text!.isEmpty{
            alert("error", message:"text is empty")
            return
        }
        
        activityViewController = UIActivityViewController(activityItems: [txtField.text! as! NSString], applicationActivities: nil)
        presentViewController(activityViewController, animated: true, completion: nil)
        
        txtField.text = ""
    }
    
    func alert(title:String, message:String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(action)
        presentViewController(alertController, animated: true, completion: nil)
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

