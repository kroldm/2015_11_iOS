//
//  ViewController.swift
//  Displaying alert
//
//  Created by HackerU on 14/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var alertController:UIAlertController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        alertController = UIAlertController(title: "title", message: "message", preferredStyle: .Alert)
        let action = UIAlertAction(title: "done", style: .Default) { [weak self](action:UIAlertAction) -> Void in
            print("done tapped")
            if let theTextFields = self!.alertController!.textFields{
                let userName = theTextFields[0].text!
                print(userName)
                let password = theTextFields[1].text!
                print(password)
            }
        }
        alertController!.addTextFieldWithConfigurationHandler { (textField:UITextField) -> Void in
            textField.placeholder = "XXXXX"
        }
        alertController!.addTextFieldWithConfigurationHandler { (textField:UITextField) -> Void in
            textField.placeholder = "YYYYY"
        }
        alertController!.addAction(action)
        
        
        alertController = UIAlertController(title: "what to do", message: "cannot be undo", preferredStyle: .ActionSheet)
        let actionEmail = UIAlertAction(title: "send via email", style: .Default) { (action:UIAlertAction) -> Void in
            
        }
        let actionWhatsapp = UIAlertAction(title: "send via whatsapp", style: .Default) { (action:UIAlertAction) -> Void in
            
        }
        let actionDelete = UIAlertAction(title: "delete", style: .Destructive) { (action:UIAlertAction) -> Void in
            
        }
        alertController!.addAction(actionEmail)
        alertController!.addAction(actionWhatsapp)
        alertController!.addAction(actionDelete)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        presentViewController(alertController!, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

