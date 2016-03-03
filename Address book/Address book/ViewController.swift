//
//  ViewController.swift
//  Address book
//
//  Created by HackerU on 03/03/2016.
//  Copyright © 2016 Ofer Raviv. All rights reserved.
//

import UIKit
import Contacts
import ContactsUI

class ViewController: UIViewController, CNContactPickerDelegate {

    var contactPicker: CNContactPickerViewController!
    var firstTime:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contactPicker = CNContactPickerViewController()
        contactPicker.delegate = self
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if firstTime{
            firstTime = false
            presentViewController(contactPicker, animated: true, completion: nil)
        }
    }
    
    func contactPicker(picker: CNContactPickerViewController, didSelectContact contact: CNContact) {
        print(contact.givenName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

