//
//  ViewController.swift
//  Background fetch capabilities
//
//  Created by HackerU on 14/01/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mustReloadData = false
    
    var newsItems:[NewsItem]{
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        return appDelegate.newsItems
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "handleNewNewsItem:", name: "newNewsItem", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "handleAppEnterForeground:", name: "enterForeground", object: nil)
    }
    
    func handleNewNewsItem(sender:NSNotification){
        if isBeingPresented(){
            //reload table view
        }else{
            mustReloadData = true
        }
    }
    
    func handleAppEnterForeground(sender:NSNotification){
        if mustReloadData{
            //reload table view
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit{
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }


}

