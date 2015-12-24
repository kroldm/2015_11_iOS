//
//  ViewController.swift
//  TextView
//
//  Created by HackerU on 24/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var textView:UITextView?
    let defaultContentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textView = UITextView(frame: view.bounds)
        if let theTextView = textView{
            theTextView.text = "some text"
            theTextView.contentInset = defaultContentInset
            theTextView.font = UIFont.systemFontOfSize(16)
            view.addSubview(theTextView)
        }
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "handleKeyboardDidShow:", name: UIKeyboardDidShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "handleKeyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }
    
    func handleKeyboardDidShow(notification:NSNotification){
        let keyboardRectAsObject = notification.userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue
        var keyboardRect = CGRectZero
        keyboardRectAsObject.getValue(&keyboardRect)
        textView!.contentInset = UIEdgeInsets(top: defaultContentInset.top, left: 0, bottom: keyboardRect.height, right: 0)
    }

    func handleKeyboardWillHide(notification:NSNotification){
        textView!.contentInset = defaultContentInset
    }
    
    deinit{
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

