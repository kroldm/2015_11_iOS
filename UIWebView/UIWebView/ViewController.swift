//
//  ViewController.swift
//  UIWebView
//
//  Created by HackerU on 28/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let webView = UIWebView(frame: view.bounds)
        let htmlString = "<h1>this is <em>my</em> title</h1>"
        webView.loadHTMLString(htmlString, baseURL: nil)
        view.addSubview(webView)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

